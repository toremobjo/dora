#!/usr/bin/env python3
# license removed for brevity
#the Do Rational Actions graph explorer config script
import rospy
import numpy as np

class Config:
    def __init__(self):
        #############################################################
        #### Your config goes here ##################################
        #############################################################
        # The max depth of yoyo or depth of fixed depth operation
        self.depth = 30.0
        # Origin of the survey area, south-western most point in radians
        self.origin = [1.107539,0.181741]
        # Width of survey area in m, side length in east-direction
        self.width = 1000.0
        # Height of survey area in m, side length in north-direction
        self.height = 1000.0
        # Desired pitch of the vehicle in rad
        self.pitch = 14.9 * np.pi / 180.0
        # Padding of edge length to allow for transition
        self.edge_padding = 50.0
        # Orientation of survey area in rad [0, pi/2]
        self.orientation = 0.0
        #Desired speed of vehicle, in m/s
        self.speed = 1.4
        # loiter radius when at node in  m
        self.loiter_radius = 20.0
        # Graph type, either "hex", "square" or "triangle", last two not implemented yet
        self.graph_type = "hex"
        # operation mode, "yoyo", "surface" or "depth"
        self.operation_mode = "yoyo"
        # Maximum search depth of the search algorithm, constrained by computation time and power, int
        self.max_search_depth = 6
        # Initial variance of the edges
        self.init_var = 100.0
        # Maximum variance of each edge
        self.max_var = 100.0
        # Variance increase, alpha, as a function of time, time constant fo function
        # var_k = var_{k_1} * (1 - alpha*deta_t) + max_var * alpha*delta_t
        # where 0 < alpha*delta_t < 1
        self.var_increase = 0.01
        # Covariance of measurements as a function of horizontal distance
        self.covariance = 2.0
        # Measurements to use, choose one or more
        self.use_temperature = True
        self.use_salinity = False
        self.use_turbidity = False
        self.use_chlorophyll = False
        self.use_oxygen = False
        self.use_cdom = False
        # Weights for the evaluation function
        # Weighting of variance
        self.mse_weight = 1.0
        # Weight for the length of the path
        self.path_length_penalty = 0.0
        # Weight for the temperature
        self.temperature_weight = 10.0
        # Weight for the salinity
        self.salinity_weight = 10.0
        # Weight for the turbidity
        self.turbidity_weight = 10.0
        # Weight for the chlorophyll
        self.chlorophyll_weight  = 10.0
        # Weight for the oxygen
        self.oxygen_weight = 10.0
        # Weight for the CDOM
        self.cdom_weight = 10.0
        # duration to wait in the surface in seconds
        self.waiting_time = 100.0
        #############################################################
        #### Your config ends here ##################################
        #############################################################


        self.measurements = [self.use_temperature, self.use_salinity, self.use_turbidity, self.use_chlorophyll, self.use_oxygen, self.use_oxygen]

        if self.operation_mode == "yoyo":
            if self.pitch < 0.01 or self.pitch > (20.0 * np.pi / 180.0):
                rospy.logfatal("Pitch angle is out of bounds")
            else:
                self.scale = (2.0 * self.depth / np.tan(self.pitch)) + self.edge_padding

        if self.graph_type == "hex":
            self.width_scaling = 1.5
            self.height_scaling = 1.733
            self.n_hex = int(np.floor(self.width/(self.width_scaling * self.scale)))
            self.m_hex = int(np.floor(self.height/(self.height_scaling * self.scale)))
        else:
            rospy.logfatal("No such graph structure available. Your input: %s",self.graph_type)

        self.checkConfig()
        self.printConfig()


    def checkConfig(self):
        if self.depth > 100.0:
            rospy.logfatal("Depth is too great for LAUV.")

        if abs(self.origin[0]) > np.pi/2.0 or abs(self.origin[1])> np.pi:
            rospy.logfatal("Origin is not on this planet, remember to use radians.")

        if self.speed > 2.0 or self.speed < 1.0:
            rospy.logerr("Speed is set to %s m/s, this may be wrong, but I dont know, I am just a computer.", self.speed)

    def printConfig(self):
        rospy.logwarn("Initialized DoRA with the following parameters:")
        rospy.loginfo("Depth: %s",self.depth)
        rospy.logwarn("M %s", self.m_hex)
        rospy.logwarn("N %s", self.n_hex)
