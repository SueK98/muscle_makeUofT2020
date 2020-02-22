// Auto-generated. Do not edit!

// (in-package clf_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class Frame_unit_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.IMU = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('IMU')) {
        this.IMU = initObj.IMU
      }
      else {
        this.IMU = new sensor_msgs.msg.Imu();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frame_unit_data
    // Serialize message field [IMU]
    bufferOffset = sensor_msgs.msg.Imu.serialize(obj.IMU, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frame_unit_data
    let len;
    let data = new Frame_unit_data(null);
    // Deserialize message field [IMU]
    data.IMU = sensor_msgs.msg.Imu.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Imu.getMessageSize(object.IMU);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'clf_msg/Frame_unit_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94524db803ef68f0233d9f1413641076';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # DataFrame
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
    # A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Frame_unit_data(null);
    if (msg.IMU !== undefined) {
      resolved.IMU = sensor_msgs.msg.Imu.Resolve(msg.IMU)
    }
    else {
      resolved.IMU = new sensor_msgs.msg.Imu()
    }

    if (msg.data !== undefined) {
      resolved.data = std_msgs.msg.Int32.Resolve(msg.data)
    }
    else {
      resolved.data = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = Frame_unit_data;
