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

class DissolvedOrganicMatter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.value = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DissolvedOrganicMatter
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.value, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DissolvedOrganicMatter
    let len;
    let data = new DissolvedOrganicMatter(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/DissolvedOrganicMatter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b215d007e3a074d676c1e2103e2e81a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/Float32 value
    std_msgs/UInt8 type #0=Colored, 1=Fluorecent
    
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
    const resolved = new DissolvedOrganicMatter(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.value !== undefined) {
      resolved.value = std_msgs.msg.Float32.Resolve(msg.value)
    }
    else {
      resolved.value = new std_msgs.msg.Float32()
    }

    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.UInt8.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = DissolvedOrganicMatter;
