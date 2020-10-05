// Auto-generated. Do not edit!

// (in-package imc_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Header {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rosheader = null;
      this.sync = null;
      this.mgid = null;
      this.size = null;
      this.timestamp = null;
      this.src = null;
      this.src_ent = null;
      this.dst = null;
      this.dst_ent = null;
    }
    else {
      if (initObj.hasOwnProperty('rosheader')) {
        this.rosheader = initObj.rosheader
      }
      else {
        this.rosheader = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sync')) {
        this.sync = initObj.sync
      }
      else {
        this.sync = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('mgid')) {
        this.mgid = initObj.mgid
      }
      else {
        this.mgid = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('src')) {
        this.src = initObj.src
      }
      else {
        this.src = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('src_ent')) {
        this.src_ent = initObj.src_ent
      }
      else {
        this.src_ent = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('dst')) {
        this.dst = initObj.dst
      }
      else {
        this.dst = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('dst_ent')) {
        this.dst_ent = initObj.dst_ent
      }
      else {
        this.dst_ent = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Header
    // Serialize message field [rosheader]
    bufferOffset = std_msgs.msg.Header.serialize(obj.rosheader, buffer, bufferOffset);
    // Serialize message field [sync]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.sync, buffer, bufferOffset);
    // Serialize message field [mgid]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.mgid, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [src]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.src, buffer, bufferOffset);
    // Serialize message field [src_ent]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.src_ent, buffer, bufferOffset);
    // Serialize message field [dst]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.dst, buffer, bufferOffset);
    // Serialize message field [dst_ent]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.dst_ent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Header
    let len;
    let data = new Header(null);
    // Deserialize message field [rosheader]
    data.rosheader = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sync]
    data.sync = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [mgid]
    data.mgid = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [src]
    data.src = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [src_ent]
    data.src_ent = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [dst]
    data.dst = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [dst_ent]
    data.dst_ent = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.rosheader);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/Header';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f599b646bbd90db766bafb08706c85c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Header(null);
    if (msg.rosheader !== undefined) {
      resolved.rosheader = std_msgs.msg.Header.Resolve(msg.rosheader)
    }
    else {
      resolved.rosheader = new std_msgs.msg.Header()
    }

    if (msg.sync !== undefined) {
      resolved.sync = std_msgs.msg.UInt16.Resolve(msg.sync)
    }
    else {
      resolved.sync = new std_msgs.msg.UInt16()
    }

    if (msg.mgid !== undefined) {
      resolved.mgid = std_msgs.msg.UInt16.Resolve(msg.mgid)
    }
    else {
      resolved.mgid = new std_msgs.msg.UInt16()
    }

    if (msg.size !== undefined) {
      resolved.size = std_msgs.msg.UInt16.Resolve(msg.size)
    }
    else {
      resolved.size = new std_msgs.msg.UInt16()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = std_msgs.msg.Float64.Resolve(msg.timestamp)
    }
    else {
      resolved.timestamp = new std_msgs.msg.Float64()
    }

    if (msg.src !== undefined) {
      resolved.src = std_msgs.msg.UInt16.Resolve(msg.src)
    }
    else {
      resolved.src = new std_msgs.msg.UInt16()
    }

    if (msg.src_ent !== undefined) {
      resolved.src_ent = std_msgs.msg.UInt8.Resolve(msg.src_ent)
    }
    else {
      resolved.src_ent = new std_msgs.msg.UInt8()
    }

    if (msg.dst !== undefined) {
      resolved.dst = std_msgs.msg.UInt16.Resolve(msg.dst)
    }
    else {
      resolved.dst = new std_msgs.msg.UInt16()
    }

    if (msg.dst_ent !== undefined) {
      resolved.dst_ent = std_msgs.msg.UInt8.Resolve(msg.dst_ent)
    }
    else {
      resolved.dst_ent = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = Header;
