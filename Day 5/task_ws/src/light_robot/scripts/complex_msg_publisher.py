#!/usr/bin/env python

import rospy
from light_robot.msg import complx
import random

pub = rospy.Publisher("complex_topic", complx,queue_size = 10)
rospy.init_node("complex_node")
rate = rospy.Rate(1)

while not rospy.is_shutdown():

	com_num = complx()

	com_num.real = int(10*random.random())
	com_num.imaginary = int(10*random.random())	
	
	rospy.loginfo(com_num)
	pub.publish(com_num)
	rate.sleep()
