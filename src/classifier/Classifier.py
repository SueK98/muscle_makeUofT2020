#!/usr/bin/env python
import rospy
from clf_msg import frame_unit_data
from std_msgs.msg import Bool


class Session():
    def __init__(self):
        # the 0th index is the number of inputs we got
        self.data = [0]
        self.imu_data_sub = rospy.Subscriber("MAKE SURE TO UPDATE THIS", frame_unit_data, self.data_recieve_callback)
        rospy.spin()

    def data_recieve_callback(self, msg):
        # append velocity data
        self.data.append(msg.velocity1x)
        self.data.append(msg.velocity1y)
        self.data.append(msg.velocity1z)

        self.data.append(msg.velocity2x)
        self.data.append(msg.velocity2y)
        self.data.append(msg.velocity2z)

        self.data.append(msg.velocity3x)
        self.data.append(msg.velocity3y)
        self.data.append(msg.velocity3z)

        self.data[0] += 1
            
    
    def del_self(self):
        self.imu_data_sub.unregister()


Node_exists = False
def main_callback(msg):
    if Node_exists:
        print("ERROR: Attempt to create new session while one already exists")
    else:
        print("Creating new session")
        try:
            Curr_session
        except NameError:
            Curr_session = Session()
        else:
            Curr_session.del_self()
            del Curr_session
            Curr_session = Session()

        

if __name__ == '__main__':
    rospy.init_node('Classifier', anonymous=False)
    rospy.Subscriber("MAKE SURE TO UPDATE THIS", Bool, self.main_callback)
    rospy.spin()

        


    
    