// Generated by gencpp from file can_msgs/GPS_xyAndQuality.msg
// DO NOT EDIT!


#ifndef CAN_MSGS_MESSAGE_GPS_XYANDQUALITY_H
#define CAN_MSGS_MESSAGE_GPS_XYANDQUALITY_H


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
struct GPS_xyAndQuality_
{
  typedef GPS_xyAndQuality_<ContainerAllocator> Type;

  GPS_xyAndQuality_()
    : header()
    , Quality(0)
    , X(0.0)
    , Y(0.0)  {
    }
  GPS_xyAndQuality_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Quality(0)
    , X(0.0)
    , Y(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _Quality_type;
  _Quality_type Quality;

   typedef float _X_type;
  _X_type X;

   typedef float _Y_type;
  _Y_type Y;




  typedef boost::shared_ptr< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> const> ConstPtr;

}; // struct GPS_xyAndQuality_

typedef ::can_msgs::GPS_xyAndQuality_<std::allocator<void> > GPS_xyAndQuality;

typedef boost::shared_ptr< ::can_msgs::GPS_xyAndQuality > GPS_xyAndQualityPtr;
typedef boost::shared_ptr< ::can_msgs::GPS_xyAndQuality const> GPS_xyAndQualityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >
{
  static const char* value()
  {
    return "74a25d89fbe9f53bf52bc0c5e62b01ea";
  }

  static const char* value(const ::can_msgs::GPS_xyAndQuality_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x74a25d89fbe9f53bULL;
  static const uint64_t static_value2 = 0xf52bc0c5e62b01eaULL;
};

template<class ContainerAllocator>
struct DataType< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_msgs/GPS_xyAndQuality";
  }

  static const char* value(const ::can_msgs::GPS_xyAndQuality_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int32 Quality\n\
float32 X\n\
float32 Y\n\
\n\
\n\
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

  static const char* value(const ::can_msgs::GPS_xyAndQuality_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Quality);
      stream.next(m.X);
      stream.next(m.Y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GPS_xyAndQuality_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_msgs::GPS_xyAndQuality_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_msgs::GPS_xyAndQuality_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Quality: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Quality);
    s << indent << "X: ";
    Printer<float>::stream(s, indent + "  ", v.X);
    s << indent << "Y: ";
    Printer<float>::stream(s, indent + "  ", v.Y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_MSGS_MESSAGE_GPS_XYANDQUALITY_H
