// Generated by gencpp from file imc_ros_msgs/OperationalLimits.msg
// DO NOT EDIT!


#ifndef IMC_ROS_MSGS_MESSAGE_OPERATIONALLIMITS_H
#define IMC_ROS_MSGS_MESSAGE_OPERATIONALLIMITS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <imc_ros_msgs/Header.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32.h>

namespace imc_ros_msgs
{
template <class ContainerAllocator>
struct OperationalLimits_
{
  typedef OperationalLimits_<ContainerAllocator> Type;

  OperationalLimits_()
    : header()
    , mask()
    , max_depth()
    , min_altitude()
    , max_altitude()
    , min_speed()
    , max_speed()
    , max_vrate()
    , lat()
    , lon()
    , orientation()
    , width()
    , length()  {
    }
  OperationalLimits_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mask(_alloc)
    , max_depth(_alloc)
    , min_altitude(_alloc)
    , max_altitude(_alloc)
    , min_speed(_alloc)
    , max_speed(_alloc)
    , max_vrate(_alloc)
    , lat(_alloc)
    , lon(_alloc)
    , orientation(_alloc)
    , width(_alloc)
    , length(_alloc)  {
  (void)_alloc;
    }



   typedef  ::imc_ros_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::UInt8_<ContainerAllocator>  _mask_type;
  _mask_type mask;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _max_depth_type;
  _max_depth_type max_depth;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _min_altitude_type;
  _min_altitude_type min_altitude;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _max_altitude_type;
  _max_altitude_type max_altitude;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _min_speed_type;
  _min_speed_type min_speed;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _max_speed_type;
  _max_speed_type max_speed;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _max_vrate_type;
  _max_vrate_type max_vrate;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _lat_type;
  _lat_type lat;

   typedef  ::std_msgs::Float64_<ContainerAllocator>  _lon_type;
  _lon_type lon;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _width_type;
  _width_type width;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _length_type;
  _length_type length;





  typedef boost::shared_ptr< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> const> ConstPtr;

}; // struct OperationalLimits_

typedef ::imc_ros_msgs::OperationalLimits_<std::allocator<void> > OperationalLimits;

typedef boost::shared_ptr< ::imc_ros_msgs::OperationalLimits > OperationalLimitsPtr;
typedef boost::shared_ptr< ::imc_ros_msgs::OperationalLimits const> OperationalLimitsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.mask == rhs.mask &&
    lhs.max_depth == rhs.max_depth &&
    lhs.min_altitude == rhs.min_altitude &&
    lhs.max_altitude == rhs.max_altitude &&
    lhs.min_speed == rhs.min_speed &&
    lhs.max_speed == rhs.max_speed &&
    lhs.max_vrate == rhs.max_vrate &&
    lhs.lat == rhs.lat &&
    lhs.lon == rhs.lon &&
    lhs.orientation == rhs.orientation &&
    lhs.width == rhs.width &&
    lhs.length == rhs.length;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace imc_ros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9f341e7d12deb64a4dcdcdf13b3769d9";
  }

  static const char* value(const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9f341e7d12deb64aULL;
  static const uint64_t static_value2 = 0x4dcdcdf13b3769d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/OperationalLimits";
  }

  static const char* value(const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/Header header\n"
"std_msgs/UInt8 mask #See IMC.xml\n"
"std_msgs/Float32 max_depth\n"
"std_msgs/Float32 min_altitude\n"
"std_msgs/Float32 max_altitude\n"
"std_msgs/Float32 min_speed\n"
"std_msgs/Float32 max_speed\n"
"std_msgs/Float32 max_vrate\n"
"std_msgs/Float64 lat\n"
"std_msgs/Float64 lon\n"
"std_msgs/Float32 orientation\n"
"std_msgs/Float32 width\n"
"std_msgs/Float32 length\n"
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
;
  }

  static const char* value(const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mask);
      stream.next(m.max_depth);
      stream.next(m.min_altitude);
      stream.next(m.max_altitude);
      stream.next(m.min_speed);
      stream.next(m.max_speed);
      stream.next(m.max_vrate);
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.orientation);
      stream.next(m.width);
      stream.next(m.length);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OperationalLimits_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imc_ros_msgs::OperationalLimits_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imc_ros_msgs::OperationalLimits_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::imc_ros_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mask: ";
    s << std::endl;
    Printer< ::std_msgs::UInt8_<ContainerAllocator> >::stream(s, indent + "  ", v.mask);
    s << indent << "max_depth: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.max_depth);
    s << indent << "min_altitude: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.min_altitude);
    s << indent << "max_altitude: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.max_altitude);
    s << indent << "min_speed: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.min_speed);
    s << indent << "max_speed: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.max_speed);
    s << indent << "max_vrate: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.max_vrate);
    s << indent << "lat: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    s << std::endl;
    Printer< ::std_msgs::Float64_<ContainerAllocator> >::stream(s, indent + "  ", v.lon);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
    s << indent << "width: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.width);
    s << indent << "length: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.length);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMC_ROS_MSGS_MESSAGE_OPERATIONALLIMITS_H