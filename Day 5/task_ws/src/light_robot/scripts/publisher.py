#!/usr/bin/env python

import rospy
from std_msgs.msg import Int32

def publisher():
    pub = rospy.Publisher('topic_name', Int32, queue_size=10)
    rospy.init_node('node1py')
    r = rospy.Rate(1)
    
    c = 0
    
    while not rospy.is_shutdown():
        
        
        pub.publish(c)
        rospy.loginfo(c)
	c = c + 1
        r.sleep()

if __name__ == '__main__':
    publisher()
