#!/usr/bin/env python3
# license removed for brevity
import pyimc
from pyimc.decorators import Subscribe, Periodic
import rospy
from std_msgs.msg import String

@Subscribe(pyimc.EstimatedState)
def recv_estate(msg):
   print("recieved estate")

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()



if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
