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

class Mtipro {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mtipro
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mtipro
    let len;
    let data = new Mtipro(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'minerva2_iface/Mtipro';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecf5f4cc2cc1e3431a655ba24a6201ff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    std_msgs/Float32 roll
    std_msgs/Float32 pitch
    std_msgs/Float32 yaw
    
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
    const resolved = new Mtipro(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.roll !== undefined) {
      resolved.roll = std_msgs.msg.Float32.Resolve(msg.roll)
    }
    else {
      resolved.roll = new std_msgs.msg.Float32()
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = std_msgs.msg.Float32.Resolve(msg.pitch)
    }
    else {
      resolved.pitch = new std_msgs.msg.Float32()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = std_msgs.msg.Float32.Resolve(msg.yaw)
    }
    else {
      resolved.yaw = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = Mtipro;
