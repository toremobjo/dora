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

class YoYo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timeout = null;
      this.lat = null;
      this.lon = null;
      this.z = null;
      this.z_units = null;
      this.amplitude = null;
      this.pitch = null;
      this.speed = null;
      this.speed_units = null;
      this.custom = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('z_units')) {
        this.z_units = initObj.z_units
      }
      else {
        this.z_units = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('amplitude')) {
        this.amplitude = initObj.amplitude
      }
      else {
        this.amplitude = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('speed_units')) {
        this.speed_units = initObj.speed_units
      }
      else {
        this.speed_units = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('custom')) {
        this.custom = initObj.custom
      }
      else {
        this.custom = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YoYo
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.timeout, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.lon, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.z, buffer, bufferOffset);
    // Serialize message field [z_units]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.z_units, buffer, bufferOffset);
    // Serialize message field [amplitude]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.amplitude, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.pitch, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [speed_units]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.speed_units, buffer, bufferOffset);
    // Serialize message field [custom]
    bufferOffset = std_msgs.msg.String.serialize(obj.custom, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YoYo
    let len;
    let data = new YoYo(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [z_units]
    data.z_units = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [amplitude]
    data.amplitude = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_units]
    data.speed_units = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [custom]
    data.custom = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.custom);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/YoYo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b672a88138792100b18e9e70f2f624f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt16 timeout
    std_msgs/Float64 lat
    std_msgs/Float64 lon
    std_msgs/Float32 z
    std_msgs/UInt8 z_units
    std_msgs/Float32 amplitude
    std_msgs/Float32 pitch
    std_msgs/Float32 speed
    std_msgs/UInt8 speed_units
    std_msgs/String custom
    
    
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
    const resolved = new YoYo(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = std_msgs.msg.UInt16.Resolve(msg.timeout)
    }
    else {
      resolved.timeout = new std_msgs.msg.UInt16()
    }

    if (msg.lat !== undefined) {
      resolved.lat = std_msgs.msg.Float64.Resolve(msg.lat)
    }
    else {
      resolved.lat = new std_msgs.msg.Float64()
    }

    if (msg.lon !== undefined) {
      resolved.lon = std_msgs.msg.Float64.Resolve(msg.lon)
    }
    else {
      resolved.lon = new std_msgs.msg.Float64()
    }

    if (msg.z !== undefined) {
      resolved.z = std_msgs.msg.Float32.Resolve(msg.z)
    }
    else {
      resolved.z = new std_msgs.msg.Float32()
    }

    if (msg.z_units !== undefined) {
      resolved.z_units = std_msgs.msg.UInt8.Resolve(msg.z_units)
    }
    else {
      resolved.z_units = new std_msgs.msg.UInt8()
    }

    if (msg.amplitude !== undefined) {
      resolved.amplitude = std_msgs.msg.Float32.Resolve(msg.amplitude)
    }
    else {
      resolved.amplitude = new std_msgs.msg.Float32()
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = std_msgs.msg.Float32.Resolve(msg.pitch)
    }
    else {
      resolved.pitch = new std_msgs.msg.Float32()
    }

    if (msg.speed !== undefined) {
      resolved.speed = std_msgs.msg.Float32.Resolve(msg.speed)
    }
    else {
      resolved.speed = new std_msgs.msg.Float32()
    }

    if (msg.speed_units !== undefined) {
      resolved.speed_units = std_msgs.msg.UInt8.Resolve(msg.speed_units)
    }
    else {
      resolved.speed_units = new std_msgs.msg.UInt8()
    }

    if (msg.custom !== undefined) {
      resolved.custom = std_msgs.msg.String.Resolve(msg.custom)
    }
    else {
      resolved.custom = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = YoYo;
