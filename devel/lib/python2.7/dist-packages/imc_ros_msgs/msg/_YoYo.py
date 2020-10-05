# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from imc_ros_msgs/YoYo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import imc_ros_msgs.msg
import std_msgs.msg

class YoYo(genpy.Message):
  _md5sum = "3b672a88138792100b18e9e70f2f624f"
  _type = "imc_ros_msgs/YoYo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """imc_ros_msgs/Header header
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
"""
  __slots__ = ['header','timeout','lat','lon','z','z_units','amplitude','pitch','speed','speed_units','custom']
  _slot_types = ['imc_ros_msgs/Header','std_msgs/UInt16','std_msgs/Float64','std_msgs/Float64','std_msgs/Float32','std_msgs/UInt8','std_msgs/Float32','std_msgs/Float32','std_msgs/Float32','std_msgs/UInt8','std_msgs/String']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,timeout,lat,lon,z,z_units,amplitude,pitch,speed,speed_units,custom

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(YoYo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = imc_ros_msgs.msg.Header()
      if self.timeout is None:
        self.timeout = std_msgs.msg.UInt16()
      if self.lat is None:
        self.lat = std_msgs.msg.Float64()
      if self.lon is None:
        self.lon = std_msgs.msg.Float64()
      if self.z is None:
        self.z = std_msgs.msg.Float32()
      if self.z_units is None:
        self.z_units = std_msgs.msg.UInt8()
      if self.amplitude is None:
        self.amplitude = std_msgs.msg.Float32()
      if self.pitch is None:
        self.pitch = std_msgs.msg.Float32()
      if self.speed is None:
        self.speed = std_msgs.msg.Float32()
      if self.speed_units is None:
        self.speed_units = std_msgs.msg.UInt8()
      if self.custom is None:
        self.custom = std_msgs.msg.String()
    else:
      self.header = imc_ros_msgs.msg.Header()
      self.timeout = std_msgs.msg.UInt16()
      self.lat = std_msgs.msg.Float64()
      self.lon = std_msgs.msg.Float64()
      self.z = std_msgs.msg.Float32()
      self.z_units = std_msgs.msg.UInt8()
      self.amplitude = std_msgs.msg.Float32()
      self.pitch = std_msgs.msg.Float32()
      self.speed = std_msgs.msg.Float32()
      self.speed_units = std_msgs.msg.UInt8()
      self.custom = std_msgs.msg.String()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.rosheader.seq, _x.header.rosheader.stamp.secs, _x.header.rosheader.stamp.nsecs))
      _x = self.header.rosheader.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3HdHBHBH2dfB3fB().pack(_x.header.sync.data, _x.header.mgid.data, _x.header.size.data, _x.header.timestamp.data, _x.header.src.data, _x.header.src_ent.data, _x.header.dst.data, _x.header.dst_ent.data, _x.timeout.data, _x.lat.data, _x.lon.data, _x.z.data, _x.z_units.data, _x.amplitude.data, _x.pitch.data, _x.speed.data, _x.speed_units.data))
      _x = self.custom.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = imc_ros_msgs.msg.Header()
      if self.timeout is None:
        self.timeout = std_msgs.msg.UInt16()
      if self.lat is None:
        self.lat = std_msgs.msg.Float64()
      if self.lon is None:
        self.lon = std_msgs.msg.Float64()
      if self.z is None:
        self.z = std_msgs.msg.Float32()
      if self.z_units is None:
        self.z_units = std_msgs.msg.UInt8()
      if self.amplitude is None:
        self.amplitude = std_msgs.msg.Float32()
      if self.pitch is None:
        self.pitch = std_msgs.msg.Float32()
      if self.speed is None:
        self.speed = std_msgs.msg.Float32()
      if self.speed_units is None:
        self.speed_units = std_msgs.msg.UInt8()
      if self.custom is None:
        self.custom = std_msgs.msg.String()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.rosheader.seq, _x.header.rosheader.stamp.secs, _x.header.rosheader.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.rosheader.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.rosheader.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.header.sync.data, _x.header.mgid.data, _x.header.size.data, _x.header.timestamp.data, _x.header.src.data, _x.header.src_ent.data, _x.header.dst.data, _x.header.dst_ent.data, _x.timeout.data, _x.lat.data, _x.lon.data, _x.z.data, _x.z_units.data, _x.amplitude.data, _x.pitch.data, _x.speed.data, _x.speed_units.data,) = _get_struct_3HdHBHBH2dfB3fB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.custom.data = str[start:end].decode('utf-8')
      else:
        self.custom.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.rosheader.seq, _x.header.rosheader.stamp.secs, _x.header.rosheader.stamp.nsecs))
      _x = self.header.rosheader.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3HdHBHBH2dfB3fB().pack(_x.header.sync.data, _x.header.mgid.data, _x.header.size.data, _x.header.timestamp.data, _x.header.src.data, _x.header.src_ent.data, _x.header.dst.data, _x.header.dst_ent.data, _x.timeout.data, _x.lat.data, _x.lon.data, _x.z.data, _x.z_units.data, _x.amplitude.data, _x.pitch.data, _x.speed.data, _x.speed_units.data))
      _x = self.custom.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = imc_ros_msgs.msg.Header()
      if self.timeout is None:
        self.timeout = std_msgs.msg.UInt16()
      if self.lat is None:
        self.lat = std_msgs.msg.Float64()
      if self.lon is None:
        self.lon = std_msgs.msg.Float64()
      if self.z is None:
        self.z = std_msgs.msg.Float32()
      if self.z_units is None:
        self.z_units = std_msgs.msg.UInt8()
      if self.amplitude is None:
        self.amplitude = std_msgs.msg.Float32()
      if self.pitch is None:
        self.pitch = std_msgs.msg.Float32()
      if self.speed is None:
        self.speed = std_msgs.msg.Float32()
      if self.speed_units is None:
        self.speed_units = std_msgs.msg.UInt8()
      if self.custom is None:
        self.custom = std_msgs.msg.String()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.rosheader.seq, _x.header.rosheader.stamp.secs, _x.header.rosheader.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.rosheader.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.rosheader.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.header.sync.data, _x.header.mgid.data, _x.header.size.data, _x.header.timestamp.data, _x.header.src.data, _x.header.src_ent.data, _x.header.dst.data, _x.header.dst_ent.data, _x.timeout.data, _x.lat.data, _x.lon.data, _x.z.data, _x.z_units.data, _x.amplitude.data, _x.pitch.data, _x.speed.data, _x.speed_units.data,) = _get_struct_3HdHBHBH2dfB3fB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.custom.data = str[start:end].decode('utf-8')
      else:
        self.custom.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3HdHBHBH2dfB3fB = None
def _get_struct_3HdHBHBH2dfB3fB():
    global _struct_3HdHBHBH2dfB3fB
    if _struct_3HdHBHBH2dfB3fB is None:
        _struct_3HdHBHBH2dfB3fB = struct.Struct("<3HdHBHBH2dfB3fB")
    return _struct_3HdHBHBH2dfB3fB
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I