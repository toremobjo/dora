// Generated by gencpp from file imc_ros_msgs/TrexOperation.msg
// DO NOT EDIT!


#ifndef IMC_ROS_MSGS_MESSAGE_TREXOPERATION_H
#define IMC_ROS_MSGS_MESSAGE_TREXOPERATION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <imc_ros_msgs/Header.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/String.h>
#include <imc_ros_msgs/TrexToken.h>

namespace imc_ros_msgs
{
template <class ContainerAllocator>
struct TrexOperation_
{
  typedef TrexOperation_<ContainerAllocator> Type;

  TrexOperation_()
    : header()
    , op()
    , goal_id()
    , token()  {
    }
  TrexOperation_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , op(_alloc)
    , goal_id(_alloc)
    , token(_alloc)  {
  (void)_alloc;
    }



   typedef  ::imc_ros_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::UInt8_<ContainerAllocator>  _op_type;
  _op_type op;

   typedef  ::std_msgs::String_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::imc_ros_msgs::TrexToken_<ContainerAllocator>  _token_type;
  _token_type token;





  typedef boost::shared_ptr< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> const> ConstPtr;

}; // struct TrexOperation_

typedef ::imc_ros_msgs::TrexOperation_<std::allocator<void> > TrexOperation;

typedef boost::shared_ptr< ::imc_ros_msgs::TrexOperation > TrexOperationPtr;
typedef boost::shared_ptr< ::imc_ros_msgs::TrexOperation const> TrexOperationConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imc_ros_msgs::TrexOperation_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::imc_ros_msgs::TrexOperation_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::TrexOperation_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.op == rhs.op &&
    lhs.goal_id == rhs.goal_id &&
    lhs.token == rhs.token;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::imc_ros_msgs::TrexOperation_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::TrexOperation_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace imc_ros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "24bad02d3c88803cb1d34a5fa7e51b9a";
  }

  static const char* value(const ::imc_ros_msgs::TrexOperation_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x24bad02d3c88803cULL;
  static const uint64_t static_value2 = 0xb1d34a5fa7e51b9aULL;
};

template<class ContainerAllocator>
struct DataType< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/TrexOperation";
  }

  static const char* value(const ::imc_ros_msgs::TrexOperation_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/Header header\n"
"std_msgs/UInt8 op #see IMC.xml\n"
"std_msgs/String goal_id\n"
"imc_ros_msgs/TrexToken token\n"
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
"MSG: std_msgs/String\n"
"string data\n"
"\n"
"================================================================================\n"
"MSG: imc_ros_msgs/TrexToken\n"
"imc_ros_msgs/Header header\n"
"std_msgs/String timeline\n"
"std_msgs/String predicate\n"
"imc_ros_msgs/TrexAttribute attributes\n"
"\n"
"================================================================================\n"
"MSG: imc_ros_msgs/TrexAttribute\n"
"imc_ros_msgs/Header header\n"
"std_msgs/String name\n"
;
  }

  static const char* value(const ::imc_ros_msgs::TrexOperation_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.op);
      stream.next(m.goal_id);
      stream.next(m.token);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TrexOperation_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imc_ros_msgs::TrexOperation_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imc_ros_msgs::TrexOperation_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::imc_ros_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "op: ";
    s << std::endl;
    Printer< ::std_msgs::UInt8_<ContainerAllocator> >::stream(s, indent + "  ", v.op);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "token: ";
    s << std::endl;
    Printer< ::imc_ros_msgs::TrexToken_<ContainerAllocator> >::stream(s, indent + "  ", v.token);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMC_ROS_MSGS_MESSAGE_TREXOPERATION_H
