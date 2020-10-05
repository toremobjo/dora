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
let Reference = require('./Reference.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FollowRefState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.control_ent = null;
      this.reference = null;
      this.state = null;
      this.plroximity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('control_ent')) {
        this.control_ent = initObj.control_ent
      }
      else {
        this.control_ent = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('reference')) {
        this.reference = initObj.reference
      }
      else {
        this.reference = new Reference();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('plroximity')) {
        this.plroximity = initObj.plroximity
      }
      else {
        this.plroximity = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowRefState
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [control_ent]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.control_ent, buffer, bufferOffset);
    // Serialize message field [reference]
    bufferOffset = Reference.serialize(obj.reference, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [plroximity]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.plroximity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowRefState
    let len;
    let data = new FollowRefState(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [control_ent]
    data.control_ent = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference]
    data.reference = Reference.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [plroximity]
    data.plroximity = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    length += Reference.getMessageSize(object.reference);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/FollowRefState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '726407b2cfb995059683aa882a05454a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt8 control_ent
    imc_ros_msgs/Reference reference
    std_msgs/UInt8 state             # 1=Wait 2=goto 3=loiter 4=hover 5=elevator 6=timeout
    std_msgs/UInt8 plroximity # 0x01=FAR 0x02=XY_NEAR 0x03=Z_NEAR 0x04=XY_UNREACHABLE 0x05=	Z_UNREACHABLE
    
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
    MSG: imc_ros_msgs/Reference
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
    const resolved = new FollowRefState(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.control_ent !== undefined) {
      resolved.control_ent = std_msgs.msg.UInt8.Resolve(msg.control_ent)
    }
    else {
      resolved.control_ent = new std_msgs.msg.UInt8()
    }

    if (msg.reference !== undefined) {
      resolved.reference = Reference.Resolve(msg.reference)
    }
    else {
      resolved.reference = new Reference()
    }

    if (msg.state !== undefined) {
      resolved.state = std_msgs.msg.UInt8.Resolve(msg.state)
    }
    else {
      resolved.state = new std_msgs.msg.UInt8()
    }

    if (msg.plroximity !== undefined) {
      resolved.plroximity = std_msgs.msg.UInt8.Resolve(msg.plroximity)
    }
    else {
      resolved.plroximity = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = FollowRefState;
