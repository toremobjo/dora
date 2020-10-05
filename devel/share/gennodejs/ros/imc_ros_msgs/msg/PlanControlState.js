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

class PlanControlState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.state = null;
      this.plan_id = null;
      this.plan_eta = null;
      this.plan_progress = null;
      this.man_id = null;
      this.man_type = null;
      this.man_eta = null;
      this.last_outcome = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('plan_id')) {
        this.plan_id = initObj.plan_id
      }
      else {
        this.plan_id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('plan_eta')) {
        this.plan_eta = initObj.plan_eta
      }
      else {
        this.plan_eta = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('plan_progress')) {
        this.plan_progress = initObj.plan_progress
      }
      else {
        this.plan_progress = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('man_id')) {
        this.man_id = initObj.man_id
      }
      else {
        this.man_id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('man_type')) {
        this.man_type = initObj.man_type
      }
      else {
        this.man_type = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('man_eta')) {
        this.man_eta = initObj.man_eta
      }
      else {
        this.man_eta = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('last_outcome')) {
        this.last_outcome = initObj.last_outcome
      }
      else {
        this.last_outcome = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanControlState
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.state, buffer, bufferOffset);
    // Serialize message field [plan_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.plan_id, buffer, bufferOffset);
    // Serialize message field [plan_eta]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.plan_eta, buffer, bufferOffset);
    // Serialize message field [plan_progress]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.plan_progress, buffer, bufferOffset);
    // Serialize message field [man_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.man_id, buffer, bufferOffset);
    // Serialize message field [man_type]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.man_type, buffer, bufferOffset);
    // Serialize message field [man_eta]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.man_eta, buffer, bufferOffset);
    // Serialize message field [last_outcome]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.last_outcome, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanControlState
    let len;
    let data = new PlanControlState(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [plan_id]
    data.plan_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [plan_eta]
    data.plan_eta = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [plan_progress]
    data.plan_progress = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [man_id]
    data.man_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [man_type]
    data.man_type = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [man_eta]
    data.man_eta = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_outcome]
    data.last_outcome = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.plan_id);
    length += std_msgs.msg.String.getMessageSize(object.man_id);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/PlanControlState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37c774ecf5519b9a486a42a0755de1f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt8 state
    std_msgs/String plan_id
    std_msgs/Int32 plan_eta
    std_msgs/Float32 plan_progress
    std_msgs/String man_id
    std_msgs/UInt16 man_type
    std_msgs/Int32 man_eta
    std_msgs/UInt8 last_outcome #See IMC.xml
    
    
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
    MSG: std_msgs/Int32
    int32 data
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
    const resolved = new PlanControlState(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.state !== undefined) {
      resolved.state = std_msgs.msg.UInt8.Resolve(msg.state)
    }
    else {
      resolved.state = new std_msgs.msg.UInt8()
    }

    if (msg.plan_id !== undefined) {
      resolved.plan_id = std_msgs.msg.String.Resolve(msg.plan_id)
    }
    else {
      resolved.plan_id = new std_msgs.msg.String()
    }

    if (msg.plan_eta !== undefined) {
      resolved.plan_eta = std_msgs.msg.Int32.Resolve(msg.plan_eta)
    }
    else {
      resolved.plan_eta = new std_msgs.msg.Int32()
    }

    if (msg.plan_progress !== undefined) {
      resolved.plan_progress = std_msgs.msg.Float32.Resolve(msg.plan_progress)
    }
    else {
      resolved.plan_progress = new std_msgs.msg.Float32()
    }

    if (msg.man_id !== undefined) {
      resolved.man_id = std_msgs.msg.String.Resolve(msg.man_id)
    }
    else {
      resolved.man_id = new std_msgs.msg.String()
    }

    if (msg.man_type !== undefined) {
      resolved.man_type = std_msgs.msg.UInt16.Resolve(msg.man_type)
    }
    else {
      resolved.man_type = new std_msgs.msg.UInt16()
    }

    if (msg.man_eta !== undefined) {
      resolved.man_eta = std_msgs.msg.Int32.Resolve(msg.man_eta)
    }
    else {
      resolved.man_eta = new std_msgs.msg.Int32()
    }

    if (msg.last_outcome !== undefined) {
      resolved.last_outcome = std_msgs.msg.UInt8.Resolve(msg.last_outcome)
    }
    else {
      resolved.last_outcome = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = PlanControlState;
