// Auto-generated. Do not edit!

// (in-package minerva2_iface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Forcevector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fx = null;
      this.fy = null;
      this.fz = null;
      this.froll = null;
      this.fpitch = null;
      this.fyaw = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('fz')) {
        this.fz = initObj.fz
      }
      else {
        this.fz = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('froll')) {
        this.froll = initObj.froll
      }
      else {
        this.froll = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('fpitch')) {
        this.fpitch = initObj.fpitch
      }
      else {
        this.fpitch = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('fyaw')) {
        this.fyaw = initObj.fyaw
      }
      else {
        this.fyaw = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Forcevector
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fx]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.fx, buffer, bufferOffset);
    // Serialize message field [fy]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.fy, buffer, bufferOffset);
    // Serialize message field [fz]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.fz, buffer, bufferOffset);
    // Serialize message field [froll]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.froll, buffer, bufferOffset);
    // Serialize message field [fpitch]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.fpitch, buffer, bufferOffset);
    // Serialize message field [fyaw]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.fyaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Forcevector
    let len;
    let data = new Forcevector(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fx]
    data.fx = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [fy]
    data.fy = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [fz]
    data.fz = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [froll]
    data.froll = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [fpitch]
    data.fpitch = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [fyaw]
    data.fyaw = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'minerva2_iface/Forcevector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e5bbf4247b7e2801d320d0defabc11e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    std_msgs/Float32 fx
    std_msgs/Float32 fy
    std_msgs/Float32 fz
    std_msgs/Float32 froll
    std_msgs/Float32 fpitch
    std_msgs/Float32 fyaw
    
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
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Forcevector(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fx !== undefined) {
      resolved.fx = std_msgs.msg.Float32.Resolve(msg.fx)
    }
    else {
      resolved.fx = new std_msgs.msg.Float32()
    }

    if (msg.fy !== undefined) {
      resolved.fy = std_msgs.msg.Float32.Resolve(msg.fy)
    }
    else {
      resolved.fy = new std_msgs.msg.Float32()
    }

    if (msg.fz !== undefined) {
      resolved.fz = std_msgs.msg.Float32.Resolve(msg.fz)
    }
    else {
      resolved.fz = new std_msgs.msg.Float32()
    }

    if (msg.froll !== undefined) {
      resolved.froll = std_msgs.msg.Float32.Resolve(msg.froll)
    }
    else {
      resolved.froll = new std_msgs.msg.Float32()
    }

    if (msg.fpitch !== undefined) {
      resolved.fpitch = std_msgs.msg.Float32.Resolve(msg.fpitch)
    }
    else {
      resolved.fpitch = new std_msgs.msg.Float32()
    }

    if (msg.fyaw !== undefined) {
      resolved.fyaw = std_msgs.msg.Float32.Resolve(msg.fyaw)
    }
    else {
      resolved.fyaw = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = Forcevector;
