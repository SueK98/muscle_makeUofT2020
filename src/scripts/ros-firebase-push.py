#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32
from firebase import firebase as fb
import os


class Listener:
  def __init__(self, topics):
    rospy.init_node('firebase', anonymous=True)
    self.firebase = fb.FirebaseApplication('https://physiocare-acc14.firebaseio.com', authentication=None)
    #timeros = rospy.get_time()
    self.firebase.post("/Subset1", {'Muscle': 20.0})
    print "init"
    for topic in topics:
	rospy.Subscriber(topic, Float32, callback=self.callback, callback_args=topic)
	print topic
    
    #rospy.spin()

  def callback(sel, msg, topic):
    data = msg.data
    print ' <' + topic + '> ' + msg.data
    #result = self.firebase.post("/Muscle", data)
    #print result

if __name__ == '__main__':
  filename = os.path.join(os.path.dirname(__file__), 'topics.txt')
  topics = list(open(filename, 'r'))
  l = Listener(topics)
