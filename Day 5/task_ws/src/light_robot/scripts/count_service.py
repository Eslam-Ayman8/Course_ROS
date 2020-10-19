#!/usr/bin/env python

import sys
import rospy
from light_robot.srv import textmessage
from light_robot.srv import textmessageRequest
from light_robot.srv import textmessageResponse




def handle_count_words(req):
	print("Returning the number of words in %s" %req.mystring)
	return textmessageResponse(len(req.mystring.split()))

def count_words_server():
	rospy.init_node('count_words_server')
	s = rospy.Service('count_words', textmessage, handle_count_words)
	print "Ready to Count Words."
	rospy.spin()

if __name__ == "__main__":
	count_words_server()
