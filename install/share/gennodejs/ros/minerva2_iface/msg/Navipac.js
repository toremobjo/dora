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

class Navipac {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.north = null;
      this.east = null;
      this.down = null;
      this.u = null;
      this.v = null;
      this.w = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('north')) {
        this.north = initObj.north
      }
      else {
        this.north = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('east')) {
        this.east = initObj.east
      }
      else {
        this.east = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('down')) {
        this.down = initObj.down
      }
      else {
        this.down = new std_msgs.msg.Float32();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Navipac
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [north]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.north, buffer, bufferOffset);
    // Serialize message field [east]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.east, buffer, bufferOffset);
    // Serialize message field [down]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.down, buffer, bufferOffset);
    // Serialize message field [u]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.u, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.v, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Navipac
    let len;
    let data = new Navipac(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [north]
    data.north = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [east]
    data.east = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [down]
    data.down = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [u]
    data.u = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'minerva2_iface/Navipac';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '526c3ab86598af434d315ff08e79faeb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    std_msgs/Float32 north
    std_msgs/Float32 east
    std_msgs/Float32 down
    std_msgs/Float32 u
    std_msgs/Float32 v
    std_msgs/Float32 w 
    
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
    const resolved = new Navipac(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.north !== undefined) {
      resolved.north = std_msgs.msg.Float32.Resolve(msg.north)
    }
    else {
      resolved.north = new std_msgs.msg.Float32()
    }

    if (msg.east !== undefined) {
      resolved.east = std_msgs.msg.Float32.Resolve(msg.east)
    }
    else {
      resolved.east = new std_msgs.msg.Float32()
    }

    if (msg.down !== undefined) {
      resolved.down = std_msgs.msg.Float32.Resolve(msg.down)
    }
    else {
      resolved.down = new std_msgs.msg.Float32()
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

    return resolved;
    }
};

module.exports = Navipac;
