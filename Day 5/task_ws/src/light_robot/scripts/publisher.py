#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32
if __name__ == '__main__':

    rospy.init_node("node_1", anonymous=False)
    rate = rospy.Rate(5) # ROS Rate at 5Hz
    pub = rospy.Publisher("topic_1", Int32, queue_size=10)
    counter = 0

	


    while not rospy.is_shutdown():
        counter += 1
        msg = Int32()
        msg.data = counter
        pub.publish(counter)
        rate.sleep()
		


