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
let TrexToken = require('./TrexToken.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrexOperation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.op = null;
      this.goal_id = null;
      this.token = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('op')) {
        this.op = initObj.op
      }
      else {
        this.op = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('goal_id')) {
        this.goal_id = initObj.goal_id
      }
      else {
        this.goal_id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('token')) {
        this.token = initObj.token
      }
      else {
        this.token = new TrexToken();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrexOperation
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [op]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.op, buffer, bufferOffset);
    // Serialize message field [goal_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.goal_id, buffer, bufferOffset);
    // Serialize message field [token]
    bufferOffset = TrexToken.serialize(obj.token, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrexOperation
    let len;
    let data = new TrexOperation(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [op]
    data.op = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_id]
    data.goal_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [token]
    data.token = TrexToken.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.goal_id);
    length += TrexToken.getMessageSize(object.token);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/TrexOperation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24bad02d3c88803cb1d34a5fa7e51b9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt8 op #see IMC.xml
    std_msgs/String goal_id
    imc_ros_msgs/TrexToken token
    
    
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
    MSG: imc_ros_msgs/TrexToken
    imc_ros_msgs/Header header
    std_msgs/String timeline
    std_msgs/String predicate
    imc_ros_msgs/TrexAttribute attributes
    
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
    const resolved = new TrexOperation(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.op !== undefined) {
      resolved.op = std_msgs.msg.UInt8.Resolve(msg.op)
    }
    else {
      resolved.op = new std_msgs.msg.UInt8()
    }

    if (msg.goal_id !== undefined) {
      resolved.goal_id = std_msgs.msg.String.Resolve(msg.goal_id)
    }
    else {
      resolved.goal_id = new std_msgs.msg.String()
    }

    if (msg.token !== undefined) {
      resolved.token = TrexToken.Resolve(msg.token)
    }
    else {
      resolved.token = new TrexToken()
    }

    return resolved;
    }
};

module.exports = TrexOperation;
