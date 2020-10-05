// Generated by gencpp from file imc_ros_msgs/VehicleMedium.msg
// DO NOT EDIT!


#ifndef IMC_ROS_MSGS_MESSAGE_VEHICLEMEDIUM_H
#define IMC_ROS_MSGS_MESSAGE_VEHICLEMEDIUM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <imc_ros_msgs/Header.h>
#include <std_msgs/UInt8.h>

namespace imc_ros_msgs
{
template <class ContainerAllocator>
struct VehicleMedium_
{
  typedef VehicleMedium_<ContainerAllocator> Type;

  VehicleMedium_()
    : header()
    , medium()  {
    }
  VehicleMedium_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , medium(_alloc)  {
  (void)_alloc;
    }



   typedef  ::imc_ros_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::UInt8_<ContainerAllocator>  _medium_type;
  _medium_type medium;





  typedef boost::shared_ptr< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> const> ConstPtr;

}; // struct VehicleMedium_

typedef ::imc_ros_msgs::VehicleMedium_<std::allocator<void> > VehicleMedium;

typedef boost::shared_ptr< ::imc_ros_msgs::VehicleMedium > VehicleMediumPtr;
typedef boost::shared_ptr< ::imc_ros_msgs::VehicleMedium const> VehicleMediumConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.medium == rhs.medium;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace imc_ros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >
{
  static const char* value()
  {
    return "47ca94d311680139b7e2894a4794a001";
  }

  static const char* value(const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x47ca94d311680139ULL;
  static const uint64_t static_value2 = 0xb7e2894a4794a001ULL;
};

template<class ContainerAllocator>
struct DataType< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/VehicleMedium";
  }

  static const char* value(const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/Header header\n"
"std_msgs/UInt8 medium\n"
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
;
  }

  static const char* value(const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.medium);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehicleMedium_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imc_ros_msgs::VehicleMedium_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imc_ros_msgs::VehicleMedium_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::imc_ros_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "medium: ";
    s << std::endl;
    Printer< ::std_msgs::UInt8_<ContainerAllocator> >::stream(s, indent + "  ", v.medium);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMC_ROS_MSGS_MESSAGE_VEHICLEMEDIUM_H