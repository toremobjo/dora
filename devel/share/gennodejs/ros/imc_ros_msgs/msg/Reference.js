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
let DesiredSpeed = require('./DesiredSpeed.js');
let DesiredZ = require('./DesiredZ.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Reference {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.flags = null;
      this.speed = null;
      this.z = null;
      this.lat = null;
      this.lon = null;
      this.radius = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = new DesiredSpeed();
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = new DesiredZ();
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
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Reference
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.flags, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = DesiredSpeed.serialize(obj.speed, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = DesiredZ.serialize(obj.z, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.lon, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Reference
    let len;
    let data = new Reference(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = DesiredSpeed.deserialize(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = DesiredZ.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    length += DesiredSpeed.getMessageSize(object.speed);
    length += DesiredZ.getMessageSize(object.z);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/Reference';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fd9aae03cf719e4a18ef0ec94ff4aca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt8 flags 
    #      //! Use Location Reference.
    #      FLAG_LOCATION = 0x01,
    #      //! Use Speed Reference.
    #      FLAG_SPEED = 0x02,
    #      //! Use Z Reference.
    #      FLAG_Z = 0x04,
    #      //! Use Radius Reference.
    #      FLAG_RADIUS = 0x08,
    #      //! Use this Reference as Start Position for PathControler.
    #      FLAG_START_POINT = 0x10,
    #      //! Use Current Position as Start Position for PathControler.
    #      FLAG_DIRECT = 0x20,
    #      //! Flag Maneuver Completion.
    #      FLAG_MANDONE = 0x80
    imc_ros_msgs/DesiredSpeed speed
    imc_ros_msgs/DesiredZ z
    std_msgs/Float64 lat 
    std_msgs/Float64 lon
    std_msgs/Float32 radius
    
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
    MSG: imc_ros_msgs/DesiredSpeed
    imc_ros_msgs/Header header
    std_msgs/Float64 value
    std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml
    
    ================================================================================
    MSG: imc_ros_msgs/DesiredZ
    imc_ros_msgs/Header header
    std_msgs/Float32 value #unit [m]
    std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height
    
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
    const resolved = new Reference(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.flags !== undefined) {
      resolved.flags = std_msgs.msg.UInt8.Resolve(msg.flags)
    }
    else {
      resolved.flags = new std_msgs.msg.UInt8()
    }

    if (msg.speed !== undefined) {
      resolved.speed = DesiredSpeed.Resolve(msg.speed)
    }
    else {
      resolved.speed = new DesiredSpeed()
    }

    if (msg.z !== undefined) {
      resolved.z = DesiredZ.Resolve(msg.z)
    }
    else {
      resolved.z = new DesiredZ()
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

    if (msg.radius !== undefined) {
      resolved.radius = std_msgs.msg.Float32.Resolve(msg.radius)
    }
    else {
      resolved.radius = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = Reference;
