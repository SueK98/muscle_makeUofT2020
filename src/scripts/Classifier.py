#!/usr/bin/env python
import rospy
from clf_msg.msg import Frame_unit_data
from std_msgs.msg import Bool
from firebase import firebase as fb
import helperFunc
prev_bool = False

class Session():
    def __init__(self):
        global prev_bool
        # the 0th index is the number of inputs we got
        self.data = [0]
        self.imu_data_sub = rospy.Subscriber("data_ML", Frame_unit_data, self.data_recieve_callback)

        print ("test initial")

        rospy.spin()

    def data_recieve_callback(self, msg):
        # append velocity data
        if not self.data[0]==0:
            self.data.append(msg.data.data)
            # append the muscle data
            pass
            self.data.append(msg.IMU.orientation.y)
            self.data.append(msg.IMU.orientation.x)
            self.data.append(msg.IMU.orientation.z)

        # append the other data
        self.data[0] += 1



    def del_self(self):
        self.imu_data_sub.unregister()
    def endSessionCallback(): #self, msg
        global prev_bool
        print ("test Stop")
        #if msg.data== False:
        clf, dic = helperFunc.readClassifier(tempClf.clf)
        ret_str = thelperFunc.predict_outcome(self.data,clf,dic)
        print ("Hello")
        firebase.put("/Subset2", 'ML', ret_str)
        #prev_bool = msg.data
        Node_exists = False
        self.del_self()
Node_exists = False


def main_callback(msg):
    global Node_exists
    if msg.data == True:
        if Node_exists:
            print("ERROR: Attempt to create new session while one already exists")
        else:
            Curr_session = Session()
            Node_exists = True
    elif msg.data==False:
        endSessionCallback()
        #self.status_data_sub = rospy.Subscriber("/stop_state", Bool, Curr_session.endSessionCallback)
        #else:
        #    print("Creating new session")
        #    try:
        #        Curr_session
        #    except NameError:
        #        Curr_session = Session()
        #    else:
        #        #Curr_session.del_self()
        #        #del Curr_session
        #        Curr_session = Session()



if __name__ == '__main__':
    rospy.init_node('Classifier', anonymous=False)
    rospy.Subscriber("/stop_state", Bool, main_callback)
    firebase = fb.FirebaseApplication('https://muscle-c883b.firebaseio.com', authentication=None)
    rospy.spin()
