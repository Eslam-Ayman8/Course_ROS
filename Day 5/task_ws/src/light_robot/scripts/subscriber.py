#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

def callback(data):
	rospy.loginfo("We heard %d now ", data.data)

def listener():

	rospy.init_node("node_2py", anonymous=False)

	rospy.Subscriber("topic_name", Int32, callback)
	

	rospy.spin()

if __name__ == '__main__':
	listener()
