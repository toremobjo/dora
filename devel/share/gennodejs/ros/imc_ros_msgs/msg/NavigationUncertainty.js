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

class NavigationUncertainty {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.phi = null;
      this.theta = null;
      this.psi = null;
      this.p = null;
      this.q = null;
      this.r = null;
      this.u = null;
      this.v = null;
      this.w = null;
      this.bias_psi = null;
      this.bias_r = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('u')) {
        this.u = initObj.u
      }
      else {
        this.u = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('bias_psi')) {
        this.bias_psi = initObj.bias_psi
      }
      else {
        this.bias_psi = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('bias_r')) {
        this.bias_r = initObj.bias_r
      }
      else {
        this.bias_r = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationUncertainty
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.z, buffer, bufferOffset);
    // Serialize message field [phi]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.phi, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.theta, buffer, bufferOffset);
    // Serialize message field [psi]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.psi, buffer, bufferOffset);
    // Serialize message field [p]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.p, buffer, bufferOffset);
    // Serialize message field [q]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.q, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.r, buffer, bufferOffset);
    // Serialize message field [u]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.u, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.v, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.w, buffer, bufferOffset);
    // Serialize message field [bias_psi]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.bias_psi, buffer, bufferOffset);
    // Serialize message field [bias_r]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.bias_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationUncertainty
    let len;
    let data = new NavigationUncertainty(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [phi]
    data.phi = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [psi]
    data.psi = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [p]
    data.p = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [q]
    data.q = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [u]
    data.u = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [bias_psi]
    data.bias_psi = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [bias_r]
    data.bias_r = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/NavigationUncertainty';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0cbfef2b043880a51dfb47b480a16c78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/Float32 x
    std_msgs/Float32 y
    std_msgs/Float32 z
    std_msgs/Float32 phi
    std_msgs/Float32 theta
    std_msgs/Float32 psi
    std_msgs/Float32 p
    std_msgs/Float32 q
    std_msgs/Float32 r
    std_msgs/Float32 u
    std_msgs/Float32 v
    std_msgs/Float32 w
    std_msgs/Float32 bias_psi
    std_msgs/Float32 bias_r
    
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
    const resolved = new NavigationUncertainty(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.x !== undefined) {
      resolved.x = std_msgs.msg.Float32.Resolve(msg.x)
    }
    else {
      resolved.x = new std_msgs.msg.Float32()
    }

    if (msg.y !== undefined) {
      resolved.y = std_msgs.msg.Float32.Resolve(msg.y)
    }
    else {
      resolved.y = new std_msgs.msg.Float32()
    }

    if (msg.z !== undefined) {
      resolved.z = std_msgs.msg.Float32.Resolve(msg.z)
    }
    else {
      resolved.z = new std_msgs.msg.Float32()
    }

    if (msg.phi !== undefined) {
      resolved.phi = std_msgs.msg.Float32.Resolve(msg.phi)
    }
    else {
      resolved.phi = new std_msgs.msg.Float32()
    }

    if (msg.theta !== undefined) {
      resolved.theta = std_msgs.msg.Float32.Resolve(msg.theta)
    }
    else {
      resolved.theta = new std_msgs.msg.Float32()
    }

    if (msg.psi !== undefined) {
      resolved.psi = std_msgs.msg.Float32.Resolve(msg.psi)
    }
    else {
      resolved.psi = new std_msgs.msg.Float32()
    }

    if (msg.p !== undefined) {
      resolved.p = std_msgs.msg.Float32.Resolve(msg.p)
    }
    else {
      resolved.p = new std_msgs.msg.Float32()
    }

    if (msg.q !== undefined) {
      resolved.q = std_msgs.msg.Float32.Resolve(msg.q)
    }
    else {
      resolved.q = new std_msgs.msg.Float32()
    }

    if (msg.r !== undefined) {
      resolved.r = std_msgs.msg.Float32.Resolve(msg.r)
    }
    else {
      resolved.r = new std_msgs.msg.Float32()
    }

    if (msg.u !== undefined) {
      resolved.u = std_msgs.msg.Float32.Resolve(msg.u)
    }
    else {
      resolved.u = new std_msgs.msg.Float32()
    }

    if (msg.v !== undefined) {
      resolved.v = std_msgs.msg.Float32.Resolve(msg.v)
    }
    else {
      resolved.v = new std_msgs.msg.Float32()
    }

    if (msg.w !== undefined) {
      resolved.w = std_msgs.msg.Float32.Resolve(msg.w)
    }
    else {
      resolved.w = new std_msgs.msg.Float32()
    }

    if (msg.bias_psi !== undefined) {
      resolved.bias_psi = std_msgs.msg.Float32.Resolve(msg.bias_psi)
    }
    else {
      resolved.bias_psi = new std_msgs.msg.Float32()
    }

    if (msg.bias_r !== undefined) {
      resolved.bias_r = std_msgs.msg.Float32.Resolve(msg.bias_r)
    }
    else {
      resolved.bias_r = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = NavigationUncertainty;