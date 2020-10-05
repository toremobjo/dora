#!/usr/bin/env python3
#################
# Author: Tore Mo-Bjørkelund
# email: tore.mo-bjorkelund@ntnu.no
#
# Connects to ROV LabViev Simulator
# python script for reading simulated position and velocity data:
# North, East, Down, u, v and w. 

import socket
import numpy as np
import rospy
from minerva2_iface.msg import Navipac
from std_msgs.msg import String


UDP_IP = "127.0.0.1"
UDP_PORT = 4302


def navipacTalker():
    pub = rospy.Publisher('ROV/Out/Sensor/Navipac', Navipac, queue_size = 10)
    pub_RAW = rospy.Publisher('ROV/Out/Sensor/RAW/Navipac', String, queue_size = 10)
    rospy.init_node('navipacTalker', anonymous = True)
    rate = rospy.Rate(100) # 100Hz

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((UDP_IP,UDP_PORT))
    sock.settimeout(15.0)
    while not rospy.is_shutdown():
        data, addr = sock.recvfrom(1024)  # buffer size is 1024 bytes, can be changed to any 2^n number
        # print("received message:", data)
        data = str(data).split(";")

        msg = Navipac()
        msg.header.stamp = rospy.get_rostime()
        msg.north.data = np.double(data[1].replace(",",".",1))
        msg.east.data = np.double(data[2].replace(",",".",1))
        msg.down.data = np.double(data[3].replace(",",".",1))
        msg.u.data = np.double(data[4].replace(",",".",1))
        msg.v.data = np.double(data[5].replace(",",".",1))
        msg.w.data = np.double(data[6].replace(",",".",1))


        pub.publish(msg)
        pub_RAW.publish(str(data))
        rate.sleep()

if __name__ == '__main__':
    try:
        navipacTalker()
    except rospy.ROSInterruptException:
        pass


