// Generated by gencpp from file can_msgs/CarSwitchControl.msg
// DO NOT EDIT!


#ifndef CAN_MSGS_MESSAGE_CARSWITCHCONTROL_H
#define CAN_MSGS_MESSAGE_CARSWITCHCONTROL_H


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
struct CarSwitchControl_
{
  typedef CarSwitchControl_<ContainerAllocator> Type;

  CarSwitchControl_()
    : header()
    , ImmStop(0)
    , LightControl(0)
    , HornControl(0)
    , DoorControl(0)
    , LidarObstacleMode(0)
    , HMIstart(0)  {
    }
  CarSwitchControl_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ImmStop(0)
    , LightControl(0)
    , HornControl(0)
    , DoorControl(0)
    , LidarObstacleMode(0)
    , HMIstart(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _ImmStop_type;
  _ImmStop_type ImmStop;

   typedef uint8_t _LightControl_type;
  _LightControl_type LightControl;

   typedef uint8_t _HornControl_type;
  _HornControl_type HornControl;

   typedef uint8_t _DoorControl_type;
  _DoorControl_type DoorControl;

   typedef uint8_t _LidarObstacleMode_type;
  _LidarObstacleMode_type LidarObstacleMode;

   typedef uint8_t _HMIstart_type;
  _HMIstart_type HMIstart;




  typedef boost::shared_ptr< ::can_msgs::CarSwitchControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_msgs::CarSwitchControl_<ContainerAllocator> const> ConstPtr;

}; // struct CarSwitchControl_

typedef ::can_msgs::CarSwitchControl_<std::allocator<void> > CarSwitchControl;

typedef boost::shared_ptr< ::can_msgs::CarSwitchControl > CarSwitchControlPtr;
typedef boost::shared_ptr< ::can_msgs::CarSwitchControl const> CarSwitchControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_msgs::CarSwitchControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_msgs::CarSwitchControl_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::can_msgs::CarSwitchControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_msgs::CarSwitchControl_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::CarSwitchControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::CarSwitchControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::CarSwitchControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::CarSwitchControl_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_msgs::CarSwitchControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1ba902f2e45ff45d9b74301bcd6ed19f";
  }

  static const char* value(const ::can_msgs::CarSwitchControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1ba902f2e45ff45dULL;
  static const uint64_t static_value2 = 0x9b74301bcd6ed19fULL;
};

template<class ContainerAllocator>
struct DataType< ::can_msgs::CarSwitchControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_msgs/CarSwitchControl";
  }

  static const char* value(const ::can_msgs::CarSwitchControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_msgs::CarSwitchControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
uint8 ImmStop\n\
uint8 LightControl\n\
uint8 HornControl\n\
uint8 DoorControl\n\
uint8 LidarObstacleMode\n\
uint8 HMIstart\n\
\n\
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

  static const char* value(const ::can_msgs::CarSwitchControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_msgs::CarSwitchControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ImmStop);
      stream.next(m.LightControl);
      stream.next(m.HornControl);
      stream.next(m.DoorControl);
      stream.next(m.LidarObstacleMode);
      stream.next(m.HMIstart);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarSwitchControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_msgs::CarSwitchControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_msgs::CarSwitchControl_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ImmStop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ImmStop);
    s << indent << "LightControl: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.LightControl);
    s << indent << "HornControl: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.HornControl);
    s << indent << "DoorControl: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.DoorControl);
    s << indent << "LidarObstacleMode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.LidarObstacleMode);
    s << indent << "HMIstart: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.HMIstart);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_MSGS_MESSAGE_CARSWITCHCONTROL_H
