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

class OperationalLimits {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mask = null;
      this.max_depth = null;
      this.min_altitude = null;
      this.max_altitude = null;
      this.min_speed = null;
      this.max_speed = null;
      this.max_vrate = null;
      this.lat = null;
      this.lon = null;
      this.orientation = null;
      this.width = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('max_depth')) {
        this.max_depth = initObj.max_depth
      }
      else {
        this.max_depth = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('min_altitude')) {
        this.min_altitude = initObj.min_altitude
      }
      else {
        this.min_altitude = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('max_altitude')) {
        this.max_altitude = initObj.max_altitude
      }
      else {
        this.max_altitude = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('min_speed')) {
        this.min_speed = initObj.min_speed
      }
      else {
        this.min_speed = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('max_speed')) {
        this.max_speed = initObj.max_speed
      }
      else {
        this.max_speed = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('max_vrate')) {
        this.max_vrate = initObj.max_vrate
      }
      else {
        this.max_vrate = new std_msgs.msg.Float32();
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
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OperationalLimits
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mask]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.mask, buffer, bufferOffset);
    // Serialize message field [max_depth]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.max_depth, buffer, bufferOffset);
    // Serialize message field [min_altitude]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.min_altitude, buffer, bufferOffset);
    // Serialize message field [max_altitude]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.max_altitude, buffer, bufferOffset);
    // Serialize message field [min_speed]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.min_speed, buffer, bufferOffset);
    // Serialize message field [max_speed]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.max_speed, buffer, bufferOffset);
    // Serialize message field [max_vrate]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.max_vrate, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.lon, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.width, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OperationalLimits
    let len;
    let data = new OperationalLimits(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mask]
    data.mask = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_depth]
    data.max_depth = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_altitude]
    data.min_altitude = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_altitude]
    data.max_altitude = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_speed]
    data.min_speed = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_speed]
    data.max_speed = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_vrate]
    data.max_vrate = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/OperationalLimits';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f341e7d12deb64a4dcdcdf13b3769d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt8 mask #See IMC.xml
    std_msgs/Float32 max_depth
    std_msgs/Float32 min_altitude
    std_msgs/Float32 max_altitude
    std_msgs/Float32 min_speed
    std_msgs/Float32 max_speed
    std_msgs/Float32 max_vrate
    std_msgs/Float64 lat
    std_msgs/Float64 lon
    std_msgs/Float32 orientation
    std_msgs/Float32 width
    std_msgs/Float32 length
    
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
    const resolved = new OperationalLimits(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.mask !== undefined) {
      resolved.mask = std_msgs.msg.UInt8.Resolve(msg.mask)
    }
    else {
      resolved.mask = new std_msgs.msg.UInt8()
    }

    if (msg.max_depth !== undefined) {
      resolved.max_depth = std_msgs.msg.Float32.Resolve(msg.max_depth)
    }
    else {
      resolved.max_depth = new std_msgs.msg.Float32()
    }

    if (msg.min_altitude !== undefined) {
      resolved.min_altitude = std_msgs.msg.Float32.Resolve(msg.min_altitude)
    }
    else {
      resolved.min_altitude = new std_msgs.msg.Float32()
    }

    if (msg.max_altitude !== undefined) {
      resolved.max_altitude = std_msgs.msg.Float32.Resolve(msg.max_altitude)
    }
    else {
      resolved.max_altitude = new std_msgs.msg.Float32()
    }

    if (msg.min_speed !== undefined) {
      resolved.min_speed = std_msgs.msg.Float32.Resolve(msg.min_speed)
    }
    else {
      resolved.min_speed = new std_msgs.msg.Float32()
    }

    if (msg.max_speed !== undefined) {
      resolved.max_speed = std_msgs.msg.Float32.Resolve(msg.max_speed)
    }
    else {
      resolved.max_speed = new std_msgs.msg.Float32()
    }

    if (msg.max_vrate !== undefined) {
      resolved.max_vrate = std_msgs.msg.Float32.Resolve(msg.max_vrate)
    }
    else {
      resolved.max_vrate = new std_msgs.msg.Float32()
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

    if (msg.orientation !== undefined) {
      resolved.orientation = std_msgs.msg.Float32.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new std_msgs.msg.Float32()
    }

    if (msg.width !== undefined) {
      resolved.width = std_msgs.msg.Float32.Resolve(msg.width)
    }
    else {
      resolved.width = new std_msgs.msg.Float32()
    }

    if (msg.length !== undefined) {
      resolved.length = std_msgs.msg.Float32.Resolve(msg.length)
    }
    else {
      resolved.length = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = OperationalLimits;
