#!/usr/bin/env python3.6
# license removed for brevity
import rospy
import numpy as np
import random
import pandas as pd

from std_msgs.msg import String, UInt8
from imc_ros_msgs.msg import Abort, Depth, EntityState, FollowReference, FollowRefState, Reference, Temperature


class FrontCrosser:
    def __init__(self):
        ########### USER INPUT #############################################
        #front params
        self.front_location = [1.107276, 0.180751] #lat, lon
        self.front_orientation = np.pi/2.0 #radians
        self.transect_length = 400  # meters

        #auv params
        self.RPM = 1500
        self.depths = [5.0,10.0,20.0,50.0]
        self.surface_between_dives = True
        self.surface_wait_time = 120.0 #seconds
        self.loiter_radius = 25.0
        self.dive_angle = 15.0 * np.pi / 180.0
        ####################################################################
        #State machine params
        self.state = "init"

        self.reference = Reference()
        self.reference.speed.value.data = self.RPM
        self.reference.speed.speed_units.data = 1
        self.reference.radius.data = self.loiter_radius

        self.dive_number = 0
        self.dives = len(self.depths)
        self.update_time = 0.0

        self.dive_lengths = self.depths / np.sin(self.dive_angle)
        #self.waypoints = np.zeros([4,3],np.float)

        ### Generate waypoints
        self.waypoints = self.generateWaypoints()
        self.reference.lat.data = self.waypoints[0][0]
        self.reference.lon.data = self.waypoints[0][1]
        self.reference.z.value.data = self.waypoints[0][2]



    def generateWaypoints(self):
        x_ld_meters = (self.transect_length+self.dive_lengths[self.dive_number])*np.sin(self.front_orientation)
        x_l_meters = (self.transect_length)*np.sin(self.front_orientation)
        y_ld_meters = (self.transect_length+self.dive_lengths[self.dive_number])*np.cos(self.front_orientation)
        y_l_meters = (self.transect_length)*np.cos(self.front_orientation)
        delta_lat_ld, delta_lon_ld = self.m2rad(x_ld_meters,y_ld_meters)
        delta_lat_l, delta_lon_l = self.m2rad(x_l_meters, y_l_meters)
        waypoints = np.zeros([4,3],np.float)
        waypoints[0][0] = self.front_location[0] - delta_lat_ld/2.0
        waypoints[0][1] = self.front_location[1] - delta_lon_ld/2.0
        waypoints[0][2] = 0.0
        waypoints[1][0] = self.front_location[0] - delta_lat_l/2.0
        waypoints[1][1] = self.front_location[1] - delta_lon_l/2.0
        waypoints[1][2] = self.depths[self.dive_number]
        waypoints[2][0] = self.front_location[0] + delta_lat_l/2.0
        waypoints[2][1] = self.front_location[1] + delta_lon_l/2.0
        waypoints[2][2] = self.depths[self.dive_number]
        waypoints[3][0] = self.front_location[0] + delta_lat_ld/2.0
        waypoints[3][1] = self.front_location[1] + delta_lon_ld/2.0
        waypoints[3][2] = 0.0
        return waypoints

    def deg2rad(self, val):
        return val*np.pi/180.0

    def rad2deg(self, val):
        return val*180.0/np.pi

    def m2rad(self,x,y):
        circ = 40075000.0
        lat =  x * 2.0 * np.pi / circ
        lon = y * 2.0 * np.pi / (circ*np.cos(self.front_location[0]))
        return lat,lon

    def update_wp(self):
        # analyze transect, update
        print("WP updated!")
        return 0

    def updateRefrence(self):
        if self.state is "init":
            self.reference.lat.data = self.waypoints[0][0]
            self.reference.lon.data = self.waypoints[0][1]
            self.reference.z.value.data = self.waypoints[0][2]
            print(self.reference)

        if self.state is "diving":
            self.reference.lat.data = self.waypoints[1][0]
            self.reference.lon.data = self.waypoints[1][1]
            self.reference.z.value.data = self.waypoints[1][2]

        if self.state is "traversing":
            self.reference.lat.data = self.waypoints[2][0]
            self.reference.lon.data = self.waypoints[2][1]
            self.reference.z.value.data = self.waypoints[2][2]

        if self.state is "ascending":
            self.reference.lat.data = self.waypoints[3][0]
            self.reference.lon.data = self.waypoints[3][1]
            self.reference.z.value.data = self.waypoints[3][2]

        if self.state is "waiting":
            self.reference.lat.data = self.waypoints[0][0]
            self.reference.lon.data = self.waypoints[0][1]
            self.reference.z.value.data = self.waypoints[0][2]

    def UpdatedlastFiveSecs(self):
        if rospy.get_time() - self.update_time < 5.0:
            return True
        else:
            return False

    def FollowRefStateCB(self,data):
        if data.plroximity.data == 6 and not self.UpdatedlastFiveSecs():
            if self.state == "init":
                self.state = "diving"
                self.updateRefrence()
            elif self.state == "diving":
                self.state = "traversing"
                self.updateRefrence()
            elif self.state == "traversing":
                self.state = "ascending"
                self.updateRefrence()
            elif self.state == "ascending":
                self.surface_time = rospy.get_time()
                self.state = "waiting"
            elif self.state == "waiting" and rospy.get_time()-self.surface_time > self.surface_wait_time:
                self.dive_number += 1
                self.state = "diving"
                if self.dive_number >= self.dives:
                    rospy.signal_shutdown("Done!")
                self.update_wp() 
                self.updateRefrence()

            self.update_time = rospy.get_time()
            print(self.state)

    def EntityStateCB(self, data):
        if data.state.data == 2 or data.state.data == 3 or data.state.data == 4:  #
            # self.state = "error"
            rospy.logerr("The system encountered an error, please investigate.")

    def AbortCB(self,data):
        self.state = "aborted"
        rospy.signal_shutdown("Done!")
        rospy.logerr("The system encountered got an abort, closing down ROS activity.")

    def TalkerListener(self):
        follow_ref_pub_ = rospy.Publisher("ROS/In/FollowReference", FollowReference, queue_size = 10)
        ref_pub_ = rospy.Publisher("ROS/In/Reference", Reference, queue_size = 10)

        rospy.init_node("front_crosser", anonymous = True)

        rospy.Subscriber("/ROS/Out/FollowRefState", FollowRefState, self.FollowRefStateCB)
        rospy.Subscriber("/ROS/Out/EntityState", EntityState, self.EntityStateCB)
        rospy.Subscriber("/ROS/Out/Abort", Abort, self.AbortCB)

        rate = rospy.Rate(1)
        rate.sleep()

        msg = FollowReference()
        msg.loiter_radius.data = self.loiter_radius
        follow_ref_pub_.publish(msg)

        while not rospy.is_shutdown():
            msg = self.reference
            msg.z.z_units.data = 1

            if self.state is "init" or self.state is "ascending" or self.state is "waiting":
                #msg.z.value.data = 0.0
                #msg.lat.data = self.reference.lat.data
                #msg.lon.data = self.reference.lon.data
                ref_pub_.publish(msg)
            elif self.state is "diving" or self.state is "traversing":
                #msg.lat.data = self.reference.lat.data
                #msg.lon.data = self.reference.lon.data
                #msg.z.value.data = self.reference.z.value.data
                ref_pub_.publish(msg)
            rate.sleep()

if __name__ == "__main__":
    fc = FrontCrosser()
    try:
        fc.TalkerListener()
    except rospy.ROSInterruptException:
        pass


