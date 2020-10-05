#!/usr/bin/env python3
#################
# Author: Tore Mo-Bjørkelund
# email: tore.mo-bjorkelund@ntnu.no
#
# Connects to ROV LabViev Simulator
# python script for reading simulated Xsens Mti attitude data:
# roll pitch and yaw

import socket
import numpy as np
import rospy 
from std_msgs.msg import String
from minerva2_iface.msg import Mtipro

UDP_IP = "127.0.0.1"
UDP_PORT = 4101

def bits2float(bits):
    sum = 0.0
    for i in range(12,32):
        sum = sum + bits[i]*(2**(11-i))
    sum = sum +1
    exponent = 0.0
    for i in range(1,12):
        exponent = exponent + bits[i]*(2**(11-i))
    return (-1)**bits[0]*sum*2.0**(exponent - 1023)

def bytes2bits(bytes):
    bits = []
    for byte in bytes:
        bt = []
        for i in range(0, 8):
            bt.insert(0, int(byte % 2))
            byte = np.floor(byte / 2)
        bits.extend(bt[0:8])

    return bits


def bytes2deg(bytes):
    return bits2float(bytes2bits(bytes))


def mtiTalker():
    pub = rospy.Publisher('ROV/Out/Sensor/Mtipro', Mtipro, queue_size = 10)
    pub_RAW = rospy.Publisher('ROV/Out/Sensor/RAW/Mtipro', String, queue_size = 10)
    rospy.init_node('mtiTalker', anonymous = True)
    rate = rospy.Rate(100) #100 Hz

    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((UDP_IP,UDP_PORT))
    sock.settimeout(15.0)
    while not rospy.is_shutdown():
        data, addr = sock.recvfrom(1024)  # buffer size is 1024 bytes, can be changed to any 2^n number
        pub_RAW.publish(str(data))

        if len(data)==20:
            msg = Mtipro()
            msg.header.stamp = rospy.get_rostime()
            msg.roll.data = bytes2deg(data[7:11])
            msg.pitch.data = bytes2deg(data[11:15])
            msg.yaw.data = bytes2deg(data[15:19])

        #Checksum, cehcked against data[19]
            chk = 0
            for i in range(1,19):
                chk = chk + data[i]
            check = 256 - (chk%256)
            if not data[19]-check:
                pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        mtiTalker()
    except rospy.ROSInterruptException:
        pass

