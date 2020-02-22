; Auto-generated. Do not edit!


(cl:in-package clf_msg-msg)


;//! \htmlinclude Frame_unit_data.msg.html

(cl:defclass <Frame_unit_data> (roslisp-msg-protocol:ros-message)
  ((IMU
    :reader IMU
    :initarg :IMU
    :type sensor_msgs-msg:Imu
    :initform (cl:make-instance 'sensor_msgs-msg:Imu))
   (data
    :reader data
    :initarg :data
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass Frame_unit_data (<Frame_unit_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frame_unit_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frame_unit_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name clf_msg-msg:<Frame_unit_data> is deprecated: use clf_msg-msg:Frame_unit_data instead.")))

(cl:ensure-generic-function 'IMU-val :lambda-list '(m))
(cl:defmethod IMU-val ((m <Frame_unit_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clf_msg-msg:IMU-val is deprecated.  Use clf_msg-msg:IMU instead.")
  (IMU m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Frame_unit_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader clf_msg-msg:data-val is deprecated.  Use clf_msg-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frame_unit_data>) ostream)
  "Serializes a message object of type '<Frame_unit_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'IMU) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frame_unit_data>) istream)
  "Deserializes a message object of type '<Frame_unit_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'IMU) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frame_unit_data>)))
  "Returns string type for a message object of type '<Frame_unit_data>"
  "clf_msg/Frame_unit_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frame_unit_data)))
  "Returns string type for a message object of type 'Frame_unit_data"
  "clf_msg/Frame_unit_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frame_unit_data>)))
  "Returns md5sum for a message object of type '<Frame_unit_data>"
  "94524db803ef68f0233d9f1413641076")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frame_unit_data)))
  "Returns md5sum for a message object of type 'Frame_unit_data"
  "94524db803ef68f0233d9f1413641076")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frame_unit_data>)))
  "Returns full string definition for message of type '<Frame_unit_data>"
  (cl:format cl:nil "# DataFrame~%# sequence ID: consecutively increasing ID ~%# uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%# time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%# string frame_id~%~%# imu data~%sensor_msgs/Imu IMU~%~%std_msgs/Int32 data~%~%### other sensors ###~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frame_unit_data)))
  "Returns full string definition for message of type 'Frame_unit_data"
  (cl:format cl:nil "# DataFrame~%# sequence ID: consecutively increasing ID ~%# uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%# time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%# string frame_id~%~%# imu data~%sensor_msgs/Imu IMU~%~%std_msgs/Int32 data~%~%### other sensors ###~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frame_unit_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'IMU))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frame_unit_data>))
  "Converts a ROS message object to a list"
  (cl:list 'Frame_unit_data
    (cl:cons ':IMU (IMU msg))
    (cl:cons ':data (data msg))
))