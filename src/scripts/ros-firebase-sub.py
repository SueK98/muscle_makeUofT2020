#!/usr/bin/env python
import rospy
from std_msgs.msg import Float32
from firebase import firebase as fb
import os
 
#def callback(msg):
#    rospy.loginfo(rospy.get_caller_id() + "Muscle: %s", msg.data)
#    firebase.put("/Subset1", 'Muscle', msg.data)
def callback():
    firebase.put("/Subset1", 'Muscle', 23)
def callbackFb(msg):
    rospy.loginfo(rospy.get_caller_id() + "Flex Degree: %s", msg.data)
    firebase.put("/Subset1", 'Degree', msg.data)

def callbackFr(msg):
    rospy.loginfo(rospy.get_caller_id() + "Flex Resist: %s", msg.data)
    firebase.put("/Subset1", 'Resistance', msg.data)

def callbackFd(msg):
    rospy.loginfo(rospy.get_caller_id() + "Force Pressure: %s", msg.data)
    firebase.put("/Subset1", 'Pressure', msg.data)


def listener():

    #rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("myoware_data", Float32, callback)
    rospy.Subscriber("flex_bend_data", Float32, callbackFb)
    rospy.Subscriber("flex_res_data", Float32, callbackFr)
    rospy.Subscriber("force_data", Float32, callbackFd)
    rospy.sleep(5)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    rospy.init_node('firebase', anonymous=True)
    firebase = fb.FirebaseApplication('https://muscle-6f5c3.firebaseio.com', authentication=None)
    callback()	
    #listener()
