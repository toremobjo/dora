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

class GpsFix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.validity = null;
      this.type = null;
      this.utc_year = null;
      this.utc_month = null;
      this.utc_day = null;
      this.utc_time = null;
      this.lat = null;
      this.lon = null;
      this.height = null;
      this.satelllites = null;
      this.cog = null;
      this.sog = null;
      this.hdop = null;
      this.vdop = null;
      this.hacc = null;
      this.vacc = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new Header();
      }
      if (initObj.hasOwnProperty('validity')) {
        this.validity = initObj.validity
      }
      else {
        this.validity = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('utc_year')) {
        this.utc_year = initObj.utc_year
      }
      else {
        this.utc_year = new std_msgs.msg.UInt16();
      }
      if (initObj.hasOwnProperty('utc_month')) {
        this.utc_month = initObj.utc_month
      }
      else {
        this.utc_month = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('utc_day')) {
        this.utc_day = initObj.utc_day
      }
      else {
        this.utc_day = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('utc_time')) {
        this.utc_time = initObj.utc_time
      }
      else {
        this.utc_time = new std_msgs.msg.Float32();
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
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('satelllites')) {
        this.satelllites = initObj.satelllites
      }
      else {
        this.satelllites = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('cog')) {
        this.cog = initObj.cog
      }
      else {
        this.cog = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('sog')) {
        this.sog = initObj.sog
      }
      else {
        this.sog = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('vdop')) {
        this.vdop = initObj.vdop
      }
      else {
        this.vdop = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('hacc')) {
        this.hacc = initObj.hacc
      }
      else {
        this.hacc = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('vacc')) {
        this.vacc = initObj.vacc
      }
      else {
        this.vacc = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsFix
    // Serialize message field [header]
    bufferOffset = Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [validity]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.validity, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [utc_year]
    bufferOffset = std_msgs.msg.UInt16.serialize(obj.utc_year, buffer, bufferOffset);
    // Serialize message field [utc_month]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.utc_month, buffer, bufferOffset);
    // Serialize message field [utc_day]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.utc_day, buffer, bufferOffset);
    // Serialize message field [utc_time]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.utc_time, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.lon, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.height, buffer, bufferOffset);
    // Serialize message field [satelllites]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.satelllites, buffer, bufferOffset);
    // Serialize message field [cog]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.cog, buffer, bufferOffset);
    // Serialize message field [sog]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.sog, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.hdop, buffer, bufferOffset);
    // Serialize message field [vdop]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.vdop, buffer, bufferOffset);
    // Serialize message field [hacc]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.hacc, buffer, bufferOffset);
    // Serialize message field [vacc]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.vacc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsFix
    let len;
    let data = new GpsFix(null);
    // Deserialize message field [header]
    data.header = Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [validity]
    data.validity = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [utc_year]
    data.utc_year = std_msgs.msg.UInt16.deserialize(buffer, bufferOffset);
    // Deserialize message field [utc_month]
    data.utc_month = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [utc_day]
    data.utc_day = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [utc_time]
    data.utc_time = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [satelllites]
    data.satelllites = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [cog]
    data.cog = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [sog]
    data.sog = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [vdop]
    data.vdop = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [hacc]
    data.hacc = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [vacc]
    data.vacc = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'imc_ros_msgs/GpsFix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e630f5dd515c436f3c9c075f57ba522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imc_ros_msgs/Header header
    std_msgs/UInt16 validity #0x0001=VALID_DATE 0x0002=VALID_TIME 0x0003=VALID_POS 0x0008=VALID_COG etc, see IMC.xml
    std_msgs/UInt8 type #see IMC.xml
    std_msgs/UInt16 utc_year
    std_msgs/UInt8 utc_month
    std_msgs/UInt8 utc_day
    std_msgs/Float32 utc_time
    std_msgs/Float64 lat
    std_msgs/Float64 lon
    std_msgs/Float32 height
    std_msgs/UInt8 satelllites
    std_msgs/Float32 cog
    std_msgs/Float32 sog
    std_msgs/Float32 hdop
    std_msgs/Float32 vdop
    std_msgs/Float32 hacc
    std_msgs/Float32 vacc
    
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
    const resolved = new GpsFix(null);
    if (msg.header !== undefined) {
      resolved.header = Header.Resolve(msg.header)
    }
    else {
      resolved.header = new Header()
    }

    if (msg.validity !== undefined) {
      resolved.validity = std_msgs.msg.UInt16.Resolve(msg.validity)
    }
    else {
      resolved.validity = new std_msgs.msg.UInt16()
    }

    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.UInt8.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.UInt8()
    }

    if (msg.utc_year !== undefined) {
      resolved.utc_year = std_msgs.msg.UInt16.Resolve(msg.utc_year)
    }
    else {
      resolved.utc_year = new std_msgs.msg.UInt16()
    }

    if (msg.utc_month !== undefined) {
      resolved.utc_month = std_msgs.msg.UInt8.Resolve(msg.utc_month)
    }
    else {
      resolved.utc_month = new std_msgs.msg.UInt8()
    }

    if (msg.utc_day !== undefined) {
      resolved.utc_day = std_msgs.msg.UInt8.Resolve(msg.utc_day)
    }
    else {
      resolved.utc_day = new std_msgs.msg.UInt8()
    }

    if (msg.utc_time !== undefined) {
      resolved.utc_time = std_msgs.msg.Float32.Resolve(msg.utc_time)
    }
    else {
      resolved.utc_time = new std_msgs.msg.Float32()
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

    if (msg.height !== undefined) {
      resolved.height = std_msgs.msg.Float32.Resolve(msg.height)
    }
    else {
      resolved.height = new std_msgs.msg.Float32()
    }

    if (msg.satelllites !== undefined) {
      resolved.satelllites = std_msgs.msg.UInt8.Resolve(msg.satelllites)
    }
    else {
      resolved.satelllites = new std_msgs.msg.UInt8()
    }

    if (msg.cog !== undefined) {
      resolved.cog = std_msgs.msg.Float32.Resolve(msg.cog)
    }
    else {
      resolved.cog = new std_msgs.msg.Float32()
    }

    if (msg.sog !== undefined) {
      resolved.sog = std_msgs.msg.Float32.Resolve(msg.sog)
    }
    else {
      resolved.sog = new std_msgs.msg.Float32()
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = std_msgs.msg.Float32.Resolve(msg.hdop)
    }
    else {
      resolved.hdop = new std_msgs.msg.Float32()
    }

    if (msg.vdop !== undefined) {
      resolved.vdop = std_msgs.msg.Float32.Resolve(msg.vdop)
    }
    else {
      resolved.vdop = new std_msgs.msg.Float32()
    }

    if (msg.hacc !== undefined) {
      resolved.hacc = std_msgs.msg.Float32.Resolve(msg.hacc)
    }
    else {
      resolved.hacc = new std_msgs.msg.Float32()
    }

    if (msg.vacc !== undefined) {
      resolved.vacc = std_msgs.msg.Float32.Resolve(msg.vacc)
    }
    else {
      resolved.vacc = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = GpsFix;
