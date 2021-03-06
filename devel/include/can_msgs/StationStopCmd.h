// Generated by gencpp from file can_msgs/StationStopCmd.msg
// DO NOT EDIT!


#ifndef CAN_MSGS_MESSAGE_STATIONSTOPCMD_H
#define CAN_MSGS_MESSAGE_STATIONSTOPCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace can_msgs
{
template <class ContainerAllocator>
struct StationStopCmd_
{
  typedef StationStopCmd_<ContainerAllocator> Type;

  StationStopCmd_()
    : header()
    , StopCmd(0)  {
    }
  StationStopCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , StopCmd(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _StopCmd_type;
  _StopCmd_type StopCmd;




  typedef boost::shared_ptr< ::can_msgs::StationStopCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_msgs::StationStopCmd_<ContainerAllocator> const> ConstPtr;

}; // struct StationStopCmd_

typedef ::can_msgs::StationStopCmd_<std::allocator<void> > StationStopCmd;

typedef boost::shared_ptr< ::can_msgs::StationStopCmd > StationStopCmdPtr;
typedef boost::shared_ptr< ::can_msgs::StationStopCmd const> StationStopCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_msgs::StationStopCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_msgs::StationStopCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace can_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'can_msgs': ['/home/hl/google/src/can_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::can_msgs::StationStopCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_msgs::StationStopCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::StationStopCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::StationStopCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::StationStopCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::StationStopCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_msgs::StationStopCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce60e85826fe73923850cf63b640f8b1";
  }

  static const char* value(const ::can_msgs::StationStopCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce60e85826fe7392ULL;
  static const uint64_t static_value2 = 0x3850cf63b640f8b1ULL;
};

template<class ContainerAllocator>
struct DataType< ::can_msgs::StationStopCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_msgs/StationStopCmd";
  }

  static const char* value(const ::can_msgs::StationStopCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_msgs::StationStopCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
uint8 StopCmd\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::can_msgs::StationStopCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_msgs::StationStopCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.StopCmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StationStopCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_msgs::StationStopCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_msgs::StationStopCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "StopCmd: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.StopCmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_MSGS_MESSAGE_STATIONSTOPCMD_H
