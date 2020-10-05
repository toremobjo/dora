// Generated by gencpp from file imc_ros_msgs/DesiredZ.msg
// DO NOT EDIT!


#ifndef IMC_ROS_MSGS_MESSAGE_DESIREDZ_H
#define IMC_ROS_MSGS_MESSAGE_DESIREDZ_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <imc_ros_msgs/Header.h>
#include <std_msgs/Float32.h>
#include <std_msgs/UInt8.h>

namespace imc_ros_msgs
{
template <class ContainerAllocator>
struct DesiredZ_
{
  typedef DesiredZ_<ContainerAllocator> Type;

  DesiredZ_()
    : header()
    , value()
    , z_units()  {
    }
  DesiredZ_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , value(_alloc)
    , z_units(_alloc)  {
  (void)_alloc;
    }



   typedef  ::imc_ros_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::Float32_<ContainerAllocator>  _value_type;
  _value_type value;

   typedef  ::std_msgs::UInt8_<ContainerAllocator>  _z_units_type;
  _z_units_type z_units;





  typedef boost::shared_ptr< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> const> ConstPtr;

}; // struct DesiredZ_

typedef ::imc_ros_msgs::DesiredZ_<std::allocator<void> > DesiredZ;

typedef boost::shared_ptr< ::imc_ros_msgs::DesiredZ > DesiredZPtr;
typedef boost::shared_ptr< ::imc_ros_msgs::DesiredZ const> DesiredZConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imc_ros_msgs::DesiredZ_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::imc_ros_msgs::DesiredZ_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::DesiredZ_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.value == rhs.value &&
    lhs.z_units == rhs.z_units;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::imc_ros_msgs::DesiredZ_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::DesiredZ_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace imc_ros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8e50b0573a97372cb54fac52b5f32e48";
  }

  static const char* value(const ::imc_ros_msgs::DesiredZ_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8e50b0573a97372cULL;
  static const uint64_t static_value2 = 0xb54fac52b5f32e48ULL;
};

template<class ContainerAllocator>
struct DataType< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/DesiredZ";
  }

  static const char* value(const ::imc_ros_msgs::DesiredZ_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/Header header\n"
"std_msgs/Float32 value #unit [m]\n"
"std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height\n"
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

  static const char* value(const ::imc_ros_msgs::DesiredZ_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.value);
      stream.next(m.z_units);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DesiredZ_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imc_ros_msgs::DesiredZ_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imc_ros_msgs::DesiredZ_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::imc_ros_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "value: ";
    s << std::endl;
    Printer< ::std_msgs::Float32_<ContainerAllocator> >::stream(s, indent + "  ", v.value);
    s << indent << "z_units: ";
    s << std::endl;
    Printer< ::std_msgs::UInt8_<ContainerAllocator> >::stream(s, indent + "  ", v.z_units);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMC_ROS_MSGS_MESSAGE_DESIREDZ_H
