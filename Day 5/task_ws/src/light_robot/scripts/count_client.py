#!/usr/bin/env python

import sys
import rospy
from light_robot.srv import textmessage
from light_robot.srv import textmessageRequest
from light_robot.srv import textmessageResponse


def count_words_client(mystring):
	rospy.wait_for_service("count_words")
	try:
		count_word = rospy.ServiceProxy("count_words",textmessage)
		resp1 = count_word(mystring)
		return resp1.count

	except rospy.ServiceException as e:
		print ("Service call failed: %s"%e)

def usage():
	return "%s [Iput a String]"%sys.argv[0]


if __name__ == "__main__":

	while not rospy.is_shutdown():
	   mystring = raw_input ("enter your string: ")
	   print("Requesting num of words in %s " %(mystring))
	   print("The number of words is %d " %(count_words_client(mystring)))

