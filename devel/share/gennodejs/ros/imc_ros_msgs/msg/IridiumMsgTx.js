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

class IridiumMsgTx {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.req_id = null;
      this.ttl = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('req_id')) {
        this.req_id = initObj.req_id
      }
      else {
        this.req_id = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('ttl')) {
        this.ttl = initObj.ttl
      }
      else {
        this.ttl = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IridiumMsgTx
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [req_id]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.req_id, buffer, bufferOffset);
    // Serialize message field [ttl]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.ttl, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = std_msgs.msg.String.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IridiumMsgTx
    let len;
    let data = new IridiumMsgTx(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [req_id]
    data.req_id = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [ttl]
    data.ttl = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.data);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/IridiumMsgTx';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '031f05279239a43f0254b768544e3ffd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt16 req_id
    std_msgs/UInt16 ttl
    std_msgs/String data
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IridiumMsgTx(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.req_id !== undefined) {
      resolved.req_id = std_msgs.msg.UInt16.Resolve(msg.req_id)
    }
    else {
      resolved.req_id = new std_msgs.msg.UInt16()
    }

    if (msg.ttl !== undefined) {
      resolved.ttl = std_msgs.msg.UInt16.Resolve(msg.ttl)
    }
    else {
      resolved.ttl = new std_msgs.msg.UInt16()
    }

    if (msg.data !== undefined) {
      resolved.data = std_msgs.msg.String.Resolve(msg.data)
    }
    else {
      resolved.data = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = IridiumMsgTx;
