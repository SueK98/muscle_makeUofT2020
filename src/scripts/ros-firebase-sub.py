#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32
from std_msgs.msg import Bool
from sensor_msgs.msg import Imu
from firebase import firebase as fb
import os

#def callback(msg):
#    rospy.loginfo(rospy.get_caller_id() + "Muscle: %s", msg.data)
#    firebase.put("/Subset1", 'Muscle', msg.data)

def callback(msg):
    rospy.loginfo(rospy.get_caller_id() + "Muscle Flex: %s", msg.data)
    firebase.put("/Subset1", 'Muscle', msg.data)
    firebase_web.put("/Subset1", 'Muscle', msg.data)
    pub_stop = rospy.Publisher('/stop_state', Bool, queue_size=10)
    testing = firebase.get("/stop", 'title')
    if testing==None:
        msg_pub = Bool()
        msg_pub.data = False
        pub_stop.publish(msg_pub)
    elif testing==0:
        msg_pub = Bool()
        msg_pub.data = True
        pub_stop.publish(msg_pub)
def callbackImu(msg):
    rospy.loginfo(rospy.get_caller_id() + "Flex Degree: %s", msg.data)
    firebase.put("/Subset1", 'Degree', msg.data)

def callbackFr(msg):
    rospy.loginfo(rospy.get_caller_id() + "Flex Resist: %s", msg.data)
    firebase.put("/Subset1", 'Resistance', msg.data)

def callbackFd(msg):
    rospy.loginfo(rospy.get_caller_id() + "Force Pressure: %s", msg.data)
    firebase.put("/Subset1", 'Pressure', msg.data)


def listener():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("my_topic", Int32, callback)

    #rospy.Subscriber("flex_bend_data", Float32, callbackFb)
    #rospy.Subscriber("flex_res_data", Float32, callbackFr)
    #rospy.Subscriber("force_data", Float32, callbackFd)
    rospy.sleep(1)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()


if __name__ == '__main__':
    #rospy.init_node('firebase', anonymous=True)
    firebase = fb.FirebaseApplication('https://muscle-c883b.firebaseio.com', authentication=None)
    firebase_web = fb.FirebaseApplication('https://muscle-a42b0.firebaseio.com', authentication=None)
    #test = firebase_web.put("/", 'start', "Test")
    #callback()
    listener()
