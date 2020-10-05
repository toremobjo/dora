// Auto-generated. Do not edit!

// (in-package imc_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Header = require('./Header.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleMedium {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.medium = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('medium')) {
        this.medium = initObj.medium
      }
      else {
        this.medium = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleMedium
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [medium]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.medium, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleMedium
    let len;
    let data = new VehicleMedium(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [medium]
    data.medium = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/VehicleMedium';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47ca94d311680139b7e2894a4794a001';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt8 medium
    
    ================================================================================
    MSG: imc_ros_msgs/Header
    std_msgs/Header rosheader
    std_msgs/UInt16 sync
    std_msgs/UInt16 mgid
    std_msgs/UInt16 size
    std_msgs/Float64 timestamp
    std_msgs/UInt16 src
    std_msgs/UInt8 src_ent
    std_msgs/UInt16 dst
    std_msgs/UInt8 dst_ent
    
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
    MSG: std_msgs/UInt16
    uint16 data
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    ================================================================================
    MSG: std_msgs/UInt8
    uint8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleMedium(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.medium !== undefined) {
      resolved.medium = std_msgs.msg.UInt8.Resolve(msg.medium)
    }
    else {
      resolved.medium = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = VehicleMedium;
