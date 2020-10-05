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
let TrexAttribute = require('./TrexAttribute.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrexToken {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timeline = null;
      this.predicate = null;
      this.attributes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('timeline')) {
        this.timeline = initObj.timeline
      }
      else {
        this.timeline = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('predicate')) {
        this.predicate = initObj.predicate
      }
      else {
        this.predicate = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('attributes')) {
        this.attributes = initObj.attributes
      }
      else {
        this.attributes = new TrexAttribute();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrexToken
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timeline]
    bufferOffset = std_msgs.msg.String.serialize(obj.timeline, buffer, bufferOffset);
    // Serialize message field [predicate]
    bufferOffset = std_msgs.msg.String.serialize(obj.predicate, buffer, bufferOffset);
    // Serialize message field [attributes]
    bufferOffset = TrexAttribute.serialize(obj.attributes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrexToken
    let len;
    let data = new TrexToken(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeline]
    data.timeline = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [predicate]
    data.predicate = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [attributes]
    data.attributes = TrexAttribute.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.timeline);
    length += std_msgs.msg.String.getMessageSize(object.predicate);
    length += TrexAttribute.getMessageSize(object.attributes);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/TrexToken';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce094818c75572189a21e2577c1581bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/String timeline
    std_msgs/String predicate
    imc_ros_msgs/TrexAttribute attributes
    
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
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: imc_ros_msgs/TrexAttribute
    imc_ros_msgs/Header header
    std_msgs/String name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrexToken(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.timeline !== undefined) {
      resolved.timeline = std_msgs.msg.String.Resolve(msg.timeline)
    }
    else {
      resolved.timeline = new std_msgs.msg.String()
    }

    if (msg.predicate !== undefined) {
      resolved.predicate = std_msgs.msg.String.Resolve(msg.predicate)
    }
    else {
      resolved.predicate = new std_msgs.msg.String()
    }

    if (msg.attributes !== undefined) {
      resolved.attributes = TrexAttribute.Resolve(msg.attributes)
    }
    else {
      resolved.attributes = new TrexAttribute()
    }

    return resolved;
    }
};

module.exports = TrexToken;
