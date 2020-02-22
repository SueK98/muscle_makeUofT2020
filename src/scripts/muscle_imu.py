#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32
from clf_msg.msg import Frame_unit_data
from sensor_msgs.msg import Imu
from firebase import firebase as fb
import os

#global muscle
#global roll
#global pitch
#global yaw
#global imu_count
#global file_counter
#global Retrieve_Data

muscle=0
roll=0
pitch=0
yaw=0
imu_count=0
file_counter=0
Retrieve_Data=0
count = 1
sequence = 0
file_number = 0

def my_callback(event):
    pub = rospy.Publisher('data_ML', Frame_unit_data, queue_size=10)
    global muscle
    global roll
    global pitch
    global yaw
    global imu_count
    global file_counter
    global Retrieve_Data
    global count
    global sequence
    global file_number
    rospy.loginfo(rospy.get_caller_id() + "Muscle Number: %s", muscle)
    roll_avg = roll/count
    pitch_avg = pitch/count
    yaw_avg = yaw/count
    rospy.loginfo(rospy.get_caller_id() + "roll_avg : %s", roll_avg)
    rospy.loginfo(rospy.get_caller_id() + "pitch_avg : %s", pitch_avg)
    rospy.loginfo(rospy.get_caller_id() + "yaw_avg : %s", yaw_avg)
    #src_filename = "output"+ str(file_number) + ".txt"
    sequence = sequence + 1
    #print(sequence)
    #outfile = open(src_filename,"a")
    #outfile.write(str(muscle) + "\n")
    #outfile.write(str(roll_avg) + "\n")
    #outfile.write(str(pitch_avg) + "\n")
    #outfile.write(str(yaw_avg) + "\n")
    #outfile.close()
    #f = open(src_filename)
    #first_line, remainder = f.readline(), f.read()
    #t = open(src_filename,"w")
    #t.write(str(sequence) + "\n")
    #t.write(remainder)
    #t.close()
    #f.close()
    send_msg = Frame_unit_data()
    send_msg.IMU.orientation.x = pitch_avg
    send_msg.IMU.orientation.y = roll_avg
    send_msg.IMU.orientation.z = yaw_avg
    send_msg.IMU.angular_velocity.x = 250
    send_msg.data.data = muscle
    pub.publish(send_msg)
    muscle = 0
    count = 1
    roll = 0.0
    pitch = 0.0
    yaw = 0.0

def callback(msg):
    global muscle
    global roll
    global pitch
    global yaw
    global imu_count
    global file_counter
    global Retrieve_Data
    global count
    global sequence
    #rospy.loginfo(rospy.get_caller_id() + "Muscle Input: %s", msg.data)
    #if (Retrieve_Data):
    if (msg.data > muscle):
        muscle = msg.data

    #firebase.put("/Subset1", 'Muscle', msg.data)
def callbackImu(msg):
    global muscle
    global roll
    global pitch
    global yaw
    global imu_count
    global file_counter
    global Retrieve_Data
    global count
    global sequence
    #rospy.loginfo(rospy.get_caller_id() + "Imu input: %s", msg.data)
    #if (Retrieve_Data):
    pitch += msg.orientation.x
    roll += msg.orientation.y
    yaw += msg.orientation.z
    count = count +1
    #firebase.put("/Subset1", 'Degree', msg.data)

def callbackFr(msg):
    rospy.loginfo(rospy.get_caller_id() + "Flex Resist: %s", msg.data)
    firebase.put("/Subset1", 'Resistance', msg.data)

def callbackFd(msg):
    rospy.loginfo(rospy.get_caller_id() + "Force Pressure: %s", msg.data)
    firebase.put("/Subset1", 'Pressure', msg.data)


def listener():
    #Retrieve_Data = rospy.get_param('/retrieve_data')
    rospy.init_node('listener_muscle', anonymous=True)
    rospy.Subscriber("my_topic", Int32, callback)
    rospy.Subscriber("filtered/imu", Imu, callbackImu)
    #rospy.Subscriber("flex_res_data", Float32, callbackFr)
    #rospy.Subscriber("force_data", Float32, callbackFd)

    rospy.Timer(rospy.Duration(0.4), my_callback)

   #rospy.sleep(5)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
    

def listen_topic():
    
    rospy.Subscriber("test_topic", Int32, listener_now)
    
    rospy.spin()

def listener_now(msg):
    global file_number
    file_number = msg.data
    listener()

if __name__ == '__main__':
    #Retrieve_Data = rospy.set_param('/retrieve_data', True)
    #rospy.init_node('firebase', anonymous=True)
    
    
    firebase = fb.FirebaseApplication('https://muscle-6f5c3.firebaseio.com', authentication=None)
    #callback()
    #listen_topic()
    listener()
