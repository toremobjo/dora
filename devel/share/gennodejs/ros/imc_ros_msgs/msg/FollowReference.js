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

class FollowReference {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.control_src = null;
      this.control_ent = null;
      this.timeout = null;
      this.loiter_radius = null;
      this.altitude_interval = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('control_src')) {
        this.control_src = initObj.control_src
      }
      else {
        this.control_src = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('control_ent')) {
        this.control_ent = initObj.control_ent
      }
      else {
        this.control_ent = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('loiter_radius')) {
        this.loiter_radius = initObj.loiter_radius
      }
      else {
        this.loiter_radius = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('altitude_interval')) {
        this.altitude_interval = initObj.altitude_interval
      }
      else {
        this.altitude_interval = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowReference
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [control_src]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.control_src, buffer, bufferOffset);
    // Serialize message field [control_ent]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.control_ent, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.timeout, buffer, bufferOffset);
    // Serialize message field [loiter_radius]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.loiter_radius, buffer, bufferOffset);
    // Serialize message field [altitude_interval]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.altitude_interval, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowReference
    let len;
    let data = new FollowReference(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [control_src]
    data.control_src = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [control_ent]
    data.control_ent = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [loiter_radius]
    data.loiter_radius = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [altitude_interval]
    data.altitude_interval = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/FollowReference';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2e2166f80c57b484155a0a8b3e650ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt16 control_src
    std_msgs/UInt8 control_ent
    std_msgs/Float32 timeout
    std_msgs/Float32 loiter_radius
    std_msgs/Float32 altitude_interval
    
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
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowReference(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.control_src !== undefined) {
      resolved.control_src = std_msgs.msg.UInt16.Resolve(msg.control_src)
    }
    else {
      resolved.control_src = new std_msgs.msg.UInt16()
    }

    if (msg.control_ent !== undefined) {
      resolved.control_ent = std_msgs.msg.UInt8.Resolve(msg.control_ent)
    }
    else {
      resolved.control_ent = new std_msgs.msg.UInt8()
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = std_msgs.msg.Float32.Resolve(msg.timeout)
    }
    else {
      resolved.timeout = new std_msgs.msg.Float32()
    }

    if (msg.loiter_radius !== undefined) {
      resolved.loiter_radius = std_msgs.msg.Float32.Resolve(msg.loiter_radius)
    }
    else {
      resolved.loiter_radius = new std_msgs.msg.Float32()
    }

    if (msg.altitude_interval !== undefined) {
      resolved.altitude_interval = std_msgs.msg.Float32.Resolve(msg.altitude_interval)
    }
    else {
      resolved.altitude_interval = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = FollowReference;
