// Generated by gencpp from file can_msgs/Float32One.msg
// DO NOT EDIT!


#ifndef CAN_MSGS_MESSAGE_FLOAT32ONE_H
#define CAN_MSGS_MESSAGE_FLOAT32ONE_H


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
struct Float32One_
{
  typedef Float32One_<ContainerAllocator> Type;

  Float32One_()
    : header()
    , A_Float(0.0)  {
    }
  Float32One_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , A_Float(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _A_Float_type;
  _A_Float_type A_Float;




  typedef boost::shared_ptr< ::can_msgs::Float32One_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_msgs::Float32One_<ContainerAllocator> const> ConstPtr;

}; // struct Float32One_

typedef ::can_msgs::Float32One_<std::allocator<void> > Float32One;

typedef boost::shared_ptr< ::can_msgs::Float32One > Float32OnePtr;
typedef boost::shared_ptr< ::can_msgs::Float32One const> Float32OneConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_msgs::Float32One_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_msgs::Float32One_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::can_msgs::Float32One_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_msgs::Float32One_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::Float32One_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::Float32One_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::Float32One_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::Float32One_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_msgs::Float32One_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c351da21f33f84beddedf62905750164";
  }

  static const char* value(const ::can_msgs::Float32One_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc351da21f33f84beULL;
  static const uint64_t static_value2 = 0xddedf62905750164ULL;
};

template<class ContainerAllocator>
struct DataType< ::can_msgs::Float32One_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_msgs/Float32One";
  }

  static const char* value(const ::can_msgs::Float32One_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_msgs::Float32One_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
float32 A_Float\n\
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

  static const char* value(const ::can_msgs::Float32One_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_msgs::Float32One_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.A_Float);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Float32One_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_msgs::Float32One_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_msgs::Float32One_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "A_Float: ";
    Printer<float>::stream(s, indent + "  ", v.A_Float);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_MSGS_MESSAGE_FLOAT32ONE_H
