#!/usr/bin/env python3.6
# license removed for brevity
import rospy
import numpy as np
import networkx as nx
import random

import dora
import config

from std_msgs.msg import String, UInt8
from imc_ros_msgs.msg import Abort, Depth, EntityState, FollowReference, FollowRefState, Reference, Temperature



class HexGrid:
    def __init__(self,n,m,conf):
        self.G = nx.hexagonal_lattice_graph(n,m)
        self.pos = nx.get_node_attributes(self.G, 'pos')
        self.home_node = (0,0)
        self.current_node = (0,0)
        self.last_node = (0,0)
        self.dora = dora.DoRA(self.G, conf)
        self.is_first_node = True

    def updateNode(self):
        self.dora.updateEdge(self.last_node, self.current_node)
        self.last_node = self.current_node
        self.current_node = self.dora.updateNode(self.last_node)

    def getPositionOfCurrentNode(self):
        return self.pos[self.current_node]

    def getPositionOfLastNode(self):
        return self.pos[self.last_node]

class LauvController:
    def __init__(self): #TODO: sett inn lat,lon,amp etcetc
        self.conf = config.Config()
        self.origin = self.conf.origin
        self.reference = Reference()
        self.reference.lat.data = self.origin[0]
        self.reference.lon.data = self.origin[1]
        self.updated_last_five_secs = False
        self.update_time = 0.0
        self.is_running = True
        self.depth = self.conf.depth
        self.speed = self.conf.speed
        self.pitch = self.conf.pitch
        self.loiter_radius = self.conf.loiter_radius
        self.scale_padding = self.conf.edge_padding
        self.scale = self.conf.scale
        self.n_hex = self.conf.n_hex
        self.m_hex = self.conf.m_hex

        #print("Made",self.m_hex,"by", self.n_hex, "hex grid, with origin in", self.origin)
        self.hg = HexGrid(self.n_hex, self.m_hex, self.conf)
        self.state = "start"
        self.waiting_time = self.conf.waiting_time #seconds to wait in the surface
        self.surface_time = 0.0

    #meters to lat/lon radians depending on where we are in the world
    def m2rad(self,x,y):
        circumference = 40075000.0
        lat = y * 2 * np.pi / circumference
        lon = (x-0.5) * 2 * np.pi / (circumference * np.cos(self.origin[0]))
        return lat, lon


    def updateRefrence(self):
        if self.state == "ascending":
            pos = self.hg.getPositionOfCurrentNode()
            diff = self.m2rad(pos[0],pos[1])
            self.reference.lat.data = self.origin[0] + diff[0]*self.scale
            self.reference.lon.data = self.origin[1] + diff[1]*self.scale
            self.reference.speed.value.data = self.speed
            self.reference.z.value.data = 0.0

        if self.state == "diving":
            next_pos = self.hg.getPositionOfCurrentNode()
            last_pos = self.hg.getPositionOfLastNode()
            pos = [next_pos[0]*0.5+last_pos[0]*0.5,next_pos[1]*0.5+last_pos[1]*0.5]
            diff = self.m2rad(pos[0],pos[1])
            #last_diff = self.m2rad(last_pos[0],last_pos[1])
            self.reference.lat.data = self.origin[0] + self.scale*diff[0]
            self.reference.lon.data = self.origin[1] + self.scale*diff[1]
            self.reference.speed.value.data = self.speed
            self.reference.z.value.data = self.depth

        if self.state == "waiting":
            pos = self.hg.getPositionOfLastNode()
            diff = self.m2rad(pos[0],pos[1])
            self.reference.lat.data = self.origin[0] + diff[0]*self.scale
            self.reference.lon.data = self.origin[1] + diff[1]*self.scale
            self.reference.speed.value.data = self.speed
            self.reference.z.value.data = 0.0


    def UpdatedlastFiveSecs(self):
        if rospy.get_time() - self.update_time < 5.0:
            return True
        else:
            return False

    def FollowRefStateCB(self,data):
        if data.plroximity.data == 6 and not self.UpdatedlastFiveSecs():

            if self.state == "start":
                self.state = "diving"
                self.hg.updateNode()
                self.updateRefrence()

            elif self.state == "diving":
                self.state = "ascending"
                self.updateRefrence()

            elif self.state == "ascending":
                self.surface_time = rospy.get_time()
                self.state = "waiting"
                self.hg.updateNode()
                self.updateRefrence()

            elif self.state == "waiting" and rospy.get_time()-self.surface_time > self.waiting_time:
                self.state = "diving"
                self.updateRefrence()

            self.update_time = rospy.get_time()
            print(self.state)

    def EntityStateCB(self,data):
        if data.state.data == 2 or data.state.data == 3 or data.state.data == 4:
            #self.state = "error"
            rospy.logerr("The system encountered an error, please investigate.")

    def AbortCB(self,data):
        self.state = "aborted"
        rospy.logerr("The system encountered got an abort, closing down ROS activity.")



    def TalkerListener(self):

        follow_ref_pub_ = rospy.Publisher("ROS/In/FollowReference", FollowReference, queue_size = 10)
        ref_pub_ = rospy.Publisher("ROS/In/Reference", Reference, queue_size = 10)
        

        rospy.init_node('lauv_controller', anonymous=True)

        rospy.Subscriber("/ROS/Out/FollowRefState", FollowRefState, self.FollowRefStateCB)
        rospy.Subscriber("/ROS/Out/EntityState", EntityState, self.EntityStateCB)
        rospy.Subscriber("/ROS/Out/Abort", Abort, self.AbortCB)
        rospy.Subscriber("ROS/Out/Temperature", Temperature, self.hg.dora.TemperatureCB)
        rospy.Subscriber("ROS/Out/Depth", Depth,self.hg.dora.DepthCB )

        rate = rospy.Rate(1) # 10hz
        rate.sleep()

        msg = FollowReference()
        msg.loiter_radius.data = self.loiter_radius
        follow_ref_pub_.publish(msg)

        while not rospy.is_shutdown() and self.is_running:
            if self.state == "start":
                msg = Reference()
                msg.speed.value.data = 1.7
                msg.z.value.data = 0.0
                msg.z.z_units.data = 1
                msg.lat.data = self.reference.lat.data
                msg.lon.data = self.reference.lon.data
                msg.radius.data = self.loiter_radius
                ref_pub_.publish(msg)
            elif self.state == "diving" or self.state == "ascending" or self.state == "waiting":
                msg = Reference()
                msg.speed.value.data = self.reference.speed.value.data
                msg.z.value.data = self.reference.z.value.data
                msg.z.z_units.data = 1
                msg.lat.data = self.reference.lat.data
                msg.lon.data = self.reference.lon.data
                msg.radius.data = self.loiter_radius
                ref_pub_.publish(msg)

            #TODO: error state her

            rate.sleep()


if __name__ == '__main__':
    lc = LauvController()
    try:
        lc.TalkerListener()
    except rospy.ROSInterruptException:
        pass
