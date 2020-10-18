#!/usr/bin/env python

import rospy
from light_robot.msg import complx

def callback(complex_msg):

	rospy.loginfo("new complex num received: %d + %d i", complex_msg.real, complex_msg.imaginary)

rospy.Subscriber('complex_topic', complx, callback)
rospy.init_node("complex_node3")
rospy.spin()
