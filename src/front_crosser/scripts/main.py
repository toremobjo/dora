#!/usr/bin/env python3

# license removed for brevity
import rospy
import numpy as np
import random
import pandas as pd
import natural_cubic_spline


from std_msgs.msg import String, UInt8
from imc_ros_msgs.msg import Abort, Depth, EntityState, EstimatedState, FollowReference, FollowRefState, StopManeuver, Reference, Temperature


class FrontCrosser:
    def __init__(self):

        ########### USER INPUT #############################################
        #front params
        self.front_location = [1.107276, 0.180751] #lat, lon
        self.front_orientation = np.pi/4.0 #radians
        self.transect_length = 100  # meters
        self.simulation = True

        #auv params
        self.RPM = 1500
        self.depths = [5.0,10.0,20.0,50.0]
        self.surface_between_dives = True
        self.surface_wait_time = 100.0 #seconds
        self.loiter_radius = 25.0
        self.dive_angle = 15.0 * np.pi / 180.0

        self.padding = 50.0
        self.alpha_front = 0.5 # How much to trust the front estimate of a single line
        self.logname = "simtest"
        self.logpath = "/home/tore/software/dora/logs/"
        ####################################################################
        #State machine params
        self.state = "init"
        #Initialization
        rospy.init_node("front_crosser", anonymous = True)
        self.logtime = rospy.get_rostime()

        self.reference = Reference()
        self.reference.speed.value.data = self.RPM
        self.reference.speed.speed_units.data = 1
        self.reference.radius.data = self.loiter_radius

        self.dive_number = 0
        self.dives = len(self.depths)
        self.update_time = 0.0

        self.dive_lengths = (self.padding) + (self.depths / np.sin(self.dive_angle))
        self.origin = self.front_location
        #self.waypoints = np.zeros([4,3],np.float)

        ### Generate waypoints
        self.waypoints = self.generateWaypoints()
        self.reference.lat.data = self.waypoints[0][0]
        self.reference.lon.data = self.waypoints[0][1]
        self.reference.z.value.data = self.waypoints[0][2]

        #### Create values and dataframe to hold them in
        self.df = pd.DataFrame()
        self.lat = 0.0
        self.lon = 0.0
        self.time = 0.0
        self.x = 0.0
        self.y = 0.0
        self.z = 0.0
        self.temperature = 0.0
        self.salinity = 0.0
        self.depth = 0.0
        self.step = 0

        ## Stop maneuver
        self.stop_pub = rospy.Publisher("ROS/In/Abort", Abort, queue_size = 10)

################################## NCS AND Temp callback ###################################
    def TemperatureCB(self,data):
        if self.simulation:
            src_ent = 39
        else:
            src_ent = 69
        if data.header.src_ent.data is src_ent: #69 for non-simulator Harald
            self.temperature = data.value.data


    def EstimatedStateCB(self,data):
        self.depth = data.depth.data
        self.time = data.header.timestamp.data
        dlat,dlon = self.m2rad(data.x.data,data.y.data)
        self.lat = data.lat.data + dlat
        self.lon = data.lon.data + dlon
        self.x, self.y = self.rad2m(self.lat,self.lon)
        self.z = data.z.data
        self.writeLog()

    def writeLog(self):
        temp_df = pd.DataFrame([self.time],columns = ["time"],index = [self.step])
        temp_df["lat"] = [self.lat]
        temp_df["lon"] = [self.lon]
        temp_df["x"] = [self.x]
        temp_df["y"] = [self.y]
        temp_df["z"] = [self.z]
        temp_df["temperature"] = [self.temperature]
        temp_df["state"] = [self.state]
        temp_df["depth"] = [self.depth]
        if self.step is 0:
            self.df = temp_df
        else:
            self.df = self.df.append(temp_df,ignore_index = True)
        self.step += 1

    def saveLog(self):
        self.df.to_csv(self.logpath + self.logname + str(self.logtime.secs)  + ".csv")


    def generateWaypoints(self):
        x_ld_meters = (self.transect_length+self.dive_lengths[self.dive_number])*np.sin(self.front_orientation)
        x_l_meters = (self.transect_length)*np.sin(self.front_orientation)
        y_ld_meters = (self.transect_length+self.dive_lengths[self.dive_number])*np.cos(self.front_orientation)
        y_l_meters = (self.transect_length)*np.cos(self.front_orientation)
        delta_lat_ld, delta_lon_ld = self.m2rad(x_ld_meters,y_ld_meters)
        delta_lat_l, delta_lon_l = self.m2rad(x_l_meters, y_l_meters)
        waypoints = np.zeros([4,3],np.float)
        if not self.dive_number % 2:
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
        else:
            waypoints[0][0] = self.front_location[0] + delta_lat_ld/2.0
            waypoints[0][1] = self.front_location[1] + delta_lon_ld/2.0
            waypoints[0][2] = 0.0
            waypoints[1][0] = self.front_location[0] + delta_lat_l/2.0
            waypoints[1][1] = self.front_location[1] + delta_lon_l/2.0
            waypoints[1][2] = self.depths[self.dive_number]
            waypoints[2][0] = self.front_location[0] - delta_lat_l/2.0
            waypoints[2][1] = self.front_location[1] - delta_lon_l/2.0
            waypoints[2][2] = self.depths[self.dive_number]
            waypoints[3][0] = self.front_location[0] - delta_lat_ld/2.0
            waypoints[3][1] = self.front_location[1] - delta_lon_ld/2.0
            waypoints[3][2] = 0.0
        return waypoints

    ###### UTILITIES ############
    def deg2rad(self, val):
        return val*np.pi/180.0

    def rad2deg(self, val):
        return val*180.0/np.pi

    def m2rad(self,x,y):
        circ = 40075000.0
        lat =  x * 2.0 * np.pi / circ
        lon = y * 2.0 * np.pi / (circ*np.cos(self.origin[0]))
        return lat,lon

    def rad2m(self,lat,lon):
        circ = 40075000.0
        x =  circ * (lat-self.origin[0]) / (2.0 * np.pi )
        y = (circ*np.cos(self.origin[0]) * (lon-self.origin[1])) / (2.0 *np.pi)
        return x,y

    def norm(self,x,y):
        return np.sqrt((x**2)+(y**2))

    def update_wp(self):
        #Filtering out relevant measurements
        curr_df = self.df[self.df["state"]=="traversing"]
        curr_df = curr_df[curr_df["depth"]>self.depths[self.dive_number]-0.5]
        curr_df = curr_df[curr_df["depth"]<self.depths[self.dive_number]+0.5]
        #print(curr_df.head())
        x_min = min(curr_df["x"].values)
        y_min = min(curr_df["y"].values)
        offsets = []
        for i in range(0,len(curr_df["y"].values)):
            offsets.append(self.norm(curr_df["x"].values[i]-x_min,curr_df["y"].values[i]-y_min))
            #if np.linalg.norm([curr_df["x"].values[i]-x_min,curr_df["y"].values[i]-y_min]) < 0.0:
            #    print(np.linalg.norm([curr_df["x"].values[i]-x_min,curr_df["y"].values[i]-y_min]))
            #    print("x:", curr_df["x"].values[i]-x_min)
            #    print("y:", curr_df["y"].values[i]-y_min)

        #print(offsets)

        if len(offsets)<20:
            rospy.signal_shutdown("not enough samples")

        try:
            model = natural_cubic_spline.get_natural_cubic_spline_model(np.array(offsets),curr_df["temperature"].values, minval = 0.0, maxval = max(offsets), n_knots = 6)
        except:
            rospy.signal_shutdown("nqs failure ")

        predictions = np.zeros([len(offsets)])
        for i in range(0,len(offsets)):
            predictions[i] = model.predict(offsets[i])

        diff = np.zeros([len(offsets)-1], float)
        for i in range(0,len(offsets)-1):
            diff[i] = ((predictions[i+1]-predictions[i])/abs(offsets[i+1]-offsets[i]))

        max_loc = np.argmax(np.abs(diff))
        self.front_location = [curr_df["lat"].values[max_loc]*self.alpha_front + self.front_location[0]*(1.0 - self.alpha_front),
                               curr_df["lon"].values[max_loc]*self.alpha_front + self.front_location[1]*(1.0 - self.alpha_front)]
        return 0

    def updateRefrence(self):
        self.saveLog()
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
                self.update_wp()
            elif self.state == "waiting" and rospy.get_time()-self.surface_time > self.surface_wait_time:
                self.dive_number += 1
                self.state = "diving"
                if self.dive_number >= self.dives:
                    self.saveLog()
                    msg = Abort()
                    self.stop_pub.publish(msg)
                    rospy.sleep(10.)
                    rospy.signal_shutdown("Done!")
                self.waypoints = self.generateWaypoints()
                self.updateRefrence()


            self.update_time = rospy.get_time()
            print(self.state)

    def EntityStateCB(self, data):
        if data.state.data == 2:  #
            # self.state = "error"
            rospy.logwarn("The system encountered a fault, this should not hinder normal operation.")
        elif data.state.data == 3:
            rospy.logwarn("The system encountered an error, please investigate.")
            #self.state = "error"
        elif data.state.data == 4:
            rospy.logerr("The system encountered a failure, please investigate.")
            self.state = "error"

    def AbortCB(self,data):
        self.state = "aborted"
        rospy.signal_shutdown("Done!")
        rospy.logerr("The system encountered got an abort, closing down ROS activity.")

    def TalkerListener(self):
        follow_ref_pub_ = rospy.Publisher("ROS/In/FollowReference", FollowReference, queue_size = 10)
        ref_pub_ = rospy.Publisher("ROS/In/Reference", Reference, queue_size = 10)


        #rospy.init_node("front_crosser", anonymous = True)

        rospy.Subscriber("/ROS/Out/FollowRefState", FollowRefState, self.FollowRefStateCB)
        rospy.Subscriber("/ROS/Out/EntityState", EntityState, self.EntityStateCB)
        rospy.Subscriber("/ROS/Out/Abort", Abort, self.AbortCB)
        rospy.Subscriber("/ROS/Out/EstimatedState",EstimatedState, self.EstimatedStateCB)
        rospy.Subscriber("/ROS/Out/Temperature", Temperature, self.TemperatureCB)

        rate = rospy.Rate(1)
        rate.sleep()

        msg = FollowReference()
        msg.loiter_radius.data = self.loiter_radius
        msg.timeout.data = 120.0

        follow_ref_pub_.publish(msg)

        while not rospy.is_shutdown():
            msg = self.reference
            msg.z.z_units.data = 1
            ##print(self.temperature)

            if self.state is "init" or self.state is "ascending" or self.state is "waiting":
                ref_pub_.publish(msg)
            elif self.state is "diving" or self.state is "traversing":
                ref_pub_.publish(msg)
            rate.sleep()

if __name__ == "__main__":
    fc = FrontCrosser()
    try:
        fc.TalkerListener()
    except rospy.ROSInterruptException:
        pass
