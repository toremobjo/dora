// Generated by gencpp from file imc_ros_msgs/YoYo.msg
// DO NOT EDIT!


#ifndef IMC_ROS_MSGS_MESSAGE_YOYO_H
#define IMC_ROS_MSGS_MESSAGE_YOYO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <imc_ros_msgs/Header.h>
#include <std_msgs/UInt16.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float32.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/String.h>

namespace imc_ros_msgs
{
template <class ContainerAllocator>
struct YoYo_
{
  typedef YoYo_<ContainerAllocator> Type;

  YoYo_()
    : header()
    , timeout()
    , lat()
    , lon()
    , z()
    , z_units()
    , amplitude()
    , pitch()
    , speed()
    , speed_units()
    , custom()  {
    }
  YoYo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , timeout(_alloc)
    , lat(_alloc)
    , lon(_alloc)
    , z(_alloc)
    , z_units(_alloc)
    , amplitude(_alloc)
    , pitch(_alloc)
    , speed(_alloc)
    , speed_units(_alloc)
    , custom(_alloc)  {
  (void)_alloc;
    }



   typedef  ::imc_ros_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::UInt16_<ContainerAllocator>  _timeout_type;
  _timeout_type timeout;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _lat_type;
  _lat_type lat;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _lon_type;
  _lon_type lon;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _z_type;
  _z_type z;

   typedef  ::std_msgs::UInt8_<ContainerAllocator>  _z_units_type;
  _z_units_type z_units;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _amplitude_type;
  _amplitude_type amplitude;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _pitch_type;
  _pitch_type pitch;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _speed_type;
  _speed_type speed;

   typedef  ::std_msgs::UInt8_<ContainerAllocator>  _speed_units_type;
  _speed_units_type speed_units;

   typedef  ::std_msgs::String_<ContainerAllocator>  _custom_type;
  _custom_type custom;





  typedef boost::shared_ptr< ::imc_ros_msgs::YoYo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imc_ros_msgs::YoYo_<ContainerAllocator> const> ConstPtr;

}; // struct YoYo_

typedef ::imc_ros_msgs::YoYo_<std::allocator<void> > YoYo;

typedef boost::shared_ptr< ::imc_ros_msgs::YoYo > YoYoPtr;
typedef boost::shared_ptr< ::imc_ros_msgs::YoYo const> YoYoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imc_ros_msgs::YoYo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imc_ros_msgs::YoYo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::imc_ros_msgs::YoYo_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::YoYo_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.timeout == rhs.timeout &&
    lhs.lat == rhs.lat &&
    lhs.lon == rhs.lon &&
    lhs.z == rhs.z &&
    lhs.z_units == rhs.z_units &&
    lhs.amplitude == rhs.amplitude &&
    lhs.pitch == rhs.pitch &&
    lhs.speed == rhs.speed &&
    lhs.speed_units == rhs.speed_units &&
    lhs.custom == rhs.custom;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::imc_ros_msgs::YoYo_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::YoYo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace imc_ros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::YoYo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::YoYo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::YoYo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::YoYo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::YoYo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::YoYo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imc_ros_msgs::YoYo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b672a88138792100b18e9e70f2f624f";
  }

  static const char* value(const ::imc_ros_msgs::YoYo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b672a8813879210ULL;
  static const uint64_t static_value2 = 0x0b18e9e70f2f624fULL;
};

template<class ContainerAllocator>
struct DataType< ::imc_ros_msgs::YoYo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/YoYo";
  }

  static const char* value(const ::imc_ros_msgs::YoYo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imc_ros_msgs::YoYo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/Header header\n"
"std_msgs/UInt16 timeout\n"
"std_msgs/Float64 lat\n"
"std_msgs/Float64 lon\n"
"std_msgs/Float32 z\n"
"std_msgs/UInt8 z_units\n"
"std_msgs/Float32 amplitude\n"
"std_msgs/Float32 pitch\n"
"std_msgs/Float32 speed\n"
"std_msgs/UInt8 speed_units\n"
"std_msgs/String custom\n"
"\n"
"\n"
"================================================================================\n"
"MSG: imc_ros_msgs/Header\n"
"std_msgs/Header rosheader\n"
"std_msgs/UInt16 sync\n"
"std_msgs/UInt16 mgid\n"
"std_msgs/UInt16 size\n"
"std_msgs/Float64 timestamp\n"
"std_msgs/UInt16 src\n"
"std_msgs/UInt8 src_ent\n"
"std_msgs/UInt16 dst\n"
"std_msgs/UInt8 dst_ent\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/UInt16\n"
"uint16 data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64\n"
"float64 data\n"
"================================================================================\n"
"MSG: std_msgs/UInt8\n"
"uint8 data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32\n"
"float32 data\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::imc_ros_msgs::YoYo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imc_ros_msgs::YoYo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.timeout);
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.z);
      stream.next(m.z_units);
      stream.next(m.amplitude);
      stream.next(m.pitch);
      stream.next(m.speed);
      stream.next(m.speed_units);
      stream.next(m.custom);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct YoYo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imc_ros_msgs::YoYo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imc_ros_msgs::YoYo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::imc_ros_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "timeout: ";
    s << std::endl;
    Printer< ::std_msgs::UInt16_<ContainerAllocator> >::stream(s, indent + "  ", v.timeout);
    s << indent << "lat: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.lon);
    s << indent << "z: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.z);
    s << indent << "z_units: ";
    s << std::endl;
    Printer< ::std_msgs::UInt8_<ContainerAllocator> >::stream(s, indent + "  ", v.z_units);
    s << indent << "amplitude: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.amplitude);
    s << indent << "pitch: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.pitch);
    s << indent << "speed: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.speed);
    s << indent << "speed_units: ";
    s << std::endl;
    Printer< ::std_msgs::UInt8_<ContainerAllocator> >::stream(s, indent + "  ", v.speed_units);
    s << indent << "custom: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.custom);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMC_ROS_MSGS_MESSAGE_YOYO_H