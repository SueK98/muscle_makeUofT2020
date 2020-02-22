;; Auto-generated. Do not edit!


(when (boundp 'clf_msg::Frame_unit_data)
  (if (not (find-package "CLF_MSG"))
    (make-package "CLF_MSG"))
  (shadow 'Frame_unit_data (find-package "CLF_MSG")))
(unless (find-package "CLF_MSG::FRAME_UNIT_DATA")
  (make-package "CLF_MSG::FRAME_UNIT_DATA"))

(in-package "ROS")
;;//! \htmlinclude Frame_unit_data.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass clf_msg::Frame_unit_data
  :super ros::object
  :slots (_IMU _data ))

(defmethod clf_msg::Frame_unit_data
  (:init
   (&key
    ((:IMU __IMU) (instance sensor_msgs::Imu :init))
    ((:data __data) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _IMU __IMU)
   (setq _data __data)
   self)
  (:IMU
   (&rest __IMU)
   (if (keywordp (car __IMU))
       (send* _IMU __IMU)
     (progn
       (if __IMU (setq _IMU (car __IMU)))
       _IMU)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Imu _IMU
    (send _IMU :serialization-length)
    ;; std_msgs/Int32 _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Imu _IMU
       (send _IMU :serialize s)
     ;; std_msgs/Int32 _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Imu _IMU
     (send _IMU :deserialize buf ptr-) (incf ptr- (send _IMU :serialization-length))
   ;; std_msgs/Int32 _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get clf_msg::Frame_unit_data :md5sum-) "94524db803ef68f0233d9f1413641076")
(setf (get clf_msg::Frame_unit_data :datatype-) "clf_msg/Frame_unit_data")
(setf (get clf_msg::Frame_unit_data :definition-)
      "# DataFrame
# sequence ID: consecutively increasing ID 
# uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
# time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
# string frame_id

# imu data
sensor_msgs/Imu IMU

std_msgs/Int32 data

### other sensors ###

================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :clf_msg/Frame_unit_data "94524db803ef68f0233d9f1413641076")


