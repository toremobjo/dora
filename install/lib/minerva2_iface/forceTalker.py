#!/usr/bin/env python3
#################
# Author: Tore Mo-Bjorkelund
# email: tore.mo-bjorkelund@ntnu.no
#
# Connects to ROV LabViev Simulator
# python script for reading simulated position and velocity data:
# North, East, Down, u, v and w.

import socket
import numpy as np
import sys
import time
import rospy
from minerva2_iface.msg import Forcevector

class ThrustAllocator:
    def __init__(self):
        self.fx = 0.0
        self.fy = 0.0
        self.fz = 0.0
        self.froll = 0.0
        self.fpitch = 0.0
        self.fyaw = 0.0
        self.update_time = 0.0

    def crc16(self, data , poly=0xA001):
        '''
        LABVIEW ROV-sim CRC algo
        '''
        data = bytearray(data)
        crc = 0xFFFF
        for b in data:
            crc = crc ^ b 
            for i in range(0, 8):
                if 1 & crc:
                    crc = (crc >> 1) ^ poly
                else:
                    crc = crc >> 1
        return crc

    def listener(self):
        rospy.init_node('forceListener', anonymous = True)
        rospy.Subscriber('ROV/In/Desiredforce', Forcevector, self.forceCB)
        rate = rospy.Rate(10) #10Hz

        UDP_IP = "127.0.0.1"
        UDP_PORT = 7580
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        sock.bind((UDP_IP,0))

        type = 61183
        type = type.to_bytes(2,"little")

        K_THR = 0.001388
        RPM_CONST = 136.53331
        T_CONFIG = np.array([[0.707107, -0.707107, -0.707107, 0.707107, -0.258819, 0.0, 0.0],
            [0.707107,  0.707107,  0.707107, 0.707107, 0.0, -0.5, -0.5],
            [0.0, 0.0, 0.0, 0.0, -0.965926, 0.866025, -0.866025],
            [0.116673, 0.116673, 0.116673, 0.116673, 0.0, 0.356235, 0.356235],
            [-0.116673, 0.116673, 0.116673, -0.116673, -0.848271, -0.476314, 0.476314],
            [1.01823, 1.01823, -1.01823, -1.01823, 0.0, -0.275, -0.275]])

        T_CONF_PINV = np.linalg.pinv(T_CONFIG)

        while not rospy.is_shutdown():
            thr_vec_bin = bytearray(type)
            forces = np.array([self.fx, self.fy, self.fz, self.froll, self.fpitch, self.fyaw])
            forces = [f*RPM_CONST for f in forces]

            if rospy.get_time()-self.update_time > 5.0:
                forces = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

            thr_vec_dec = np.array(forces)
            thr_vec_dec = T_CONF_PINV.dot(thr_vec_dec)

            t = thr_vec_dec
            thr_vec_dec = np.array([t[5],t[6],t[1],t[3],t[0],t[2],t[4]])
            thr_vec_dec = np.append(thr_vec_dec,0.0)

            thrustvector = []
            for t in thr_vec_dec:
                thrustvector.append(int((np.sign(t)*np.sqrt(np.abs(t*RPM_CONST/K_THR)))))

            for thrust in thrustvector:
                bytethrust = thrust.to_bytes(4,"little",signed=True)
                for byte in bytethrust:
                    thr_vec_bin.append(byte)

            crc = self.crc16(thr_vec_bin)
            crc = crc.to_bytes(2,"little")
            thr_vec_bin.append(crc[0])
            thr_vec_bin.append(crc[1])

            sock.sendto(thr_vec_bin, (UDP_IP, UDP_PORT))
            rate.sleep()

    def forceCB(self,data):
        self.fx = data.fx.data
        self.fy = data.fy.data
        self.fz = data.fz.data
        self.froll = data.froll.data
        self.fpitch = data.fpitch.data
        self.fyaw = data.fyaw.data
        self.update_time = rospy.get_time()

if __name__ == '__main__':
    ta = ThrustAllocator()
    try: 
        ta.listener()
    except rospy.ROSInterruptException:
        pass
