// Generated by gencpp from file imc_ros_msgs/IridiumMsgTx.msg
// DO NOT EDIT!


#ifndef IMC_ROS_MSGS_MESSAGE_IRIDIUMMSGTX_H
#define IMC_ROS_MSGS_MESSAGE_IRIDIUMMSGTX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <imc_ros_msgs/Header.h>
#include <std_msgs/UInt16.h>
#include <std_msgs/UInt16.h>
#include <std_msgs/String.h>

namespace imc_ros_msgs
{
template <class ContainerAllocator>
struct IridiumMsgTx_
{
  typedef IridiumMsgTx_<ContainerAllocator> Type;

  IridiumMsgTx_()
    : header()
    , req_id()
    , ttl()
    , data()  {
    }
  IridiumMsgTx_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , req_id(_alloc)
    , ttl(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::imc_ros_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::std_msgs::UInt16_<ContainerAllocator>  _req_id_type;
  _req_id_type req_id;

   typedef  ::std_msgs::UInt16_<ContainerAllocator>  _ttl_type;
  _ttl_type ttl;

   typedef  ::std_msgs::String_<ContainerAllocator>  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> const> ConstPtr;

}; // struct IridiumMsgTx_

typedef ::imc_ros_msgs::IridiumMsgTx_<std::allocator<void> > IridiumMsgTx;

typedef boost::shared_ptr< ::imc_ros_msgs::IridiumMsgTx > IridiumMsgTxPtr;
typedef boost::shared_ptr< ::imc_ros_msgs::IridiumMsgTx const> IridiumMsgTxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.req_id == rhs.req_id &&
    lhs.ttl == rhs.ttl &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator1> & lhs, const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace imc_ros_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "031f05279239a43f0254b768544e3ffd";
  }

  static const char* value(const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x031f05279239a43fULL;
  static const uint64_t static_value2 = 0x0254b768544e3ffdULL;
};

template<class ContainerAllocator>
struct DataType< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/IridiumMsgTx";
  }

  static const char* value(const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imc_ros_msgs/Header header\n"
"std_msgs/UInt16 req_id\n"
"std_msgs/UInt16 ttl\n"
"std_msgs/String data\n"
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
;
  }

  static const char* value(const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.req_id);
      stream.next(m.ttl);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IridiumMsgTx_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imc_ros_msgs::IridiumMsgTx_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::imc_ros_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "req_id: ";
    s << std::endl;
    Printer< ::std_msgs::UInt16_<ContainerAllocator> >::stream(s, indent + "  ", v.req_id);
    s << indent << "ttl: ";
    s << std::endl;
    Printer< ::std_msgs::UInt16_<ContainerAllocator> >::stream(s, indent + "  ", v.ttl);
    s << indent << "data: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMC_ROS_MSGS_MESSAGE_IRIDIUMMSGTX_H
