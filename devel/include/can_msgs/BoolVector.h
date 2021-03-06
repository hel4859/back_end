// Generated by gencpp from file can_msgs/BoolVector.msg
// DO NOT EDIT!


#ifndef CAN_MSGS_MESSAGE_BOOLVECTOR_H
#define CAN_MSGS_MESSAGE_BOOLVECTOR_H


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
struct BoolVector_
{
  typedef BoolVector_<ContainerAllocator> Type;

  BoolVector_()
    : header()
    , bool_vector()  {
    }
  BoolVector_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , bool_vector(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _bool_vector_type;
  _bool_vector_type bool_vector;




  typedef boost::shared_ptr< ::can_msgs::BoolVector_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_msgs::BoolVector_<ContainerAllocator> const> ConstPtr;

}; // struct BoolVector_

typedef ::can_msgs::BoolVector_<std::allocator<void> > BoolVector;

typedef boost::shared_ptr< ::can_msgs::BoolVector > BoolVectorPtr;
typedef boost::shared_ptr< ::can_msgs::BoolVector const> BoolVectorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_msgs::BoolVector_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_msgs::BoolVector_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::can_msgs::BoolVector_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_msgs::BoolVector_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::BoolVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::BoolVector_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::BoolVector_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::BoolVector_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_msgs::BoolVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5c969cfde8134bfddfdb800d3c138ef9";
  }

  static const char* value(const ::can_msgs::BoolVector_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5c969cfde8134bfdULL;
  static const uint64_t static_value2 = 0xdfdb800d3c138ef9ULL;
};

template<class ContainerAllocator>
struct DataType< ::can_msgs::BoolVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_msgs/BoolVector";
  }

  static const char* value(const ::can_msgs::BoolVector_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_msgs::BoolVector_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
bool[]  bool_vector\n\
\n\
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

  static const char* value(const ::can_msgs::BoolVector_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_msgs::BoolVector_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.bool_vector);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BoolVector_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_msgs::BoolVector_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_msgs::BoolVector_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "bool_vector[]" << std::endl;
    for (size_t i = 0; i < v.bool_vector.size(); ++i)
    {
      s << indent << "  bool_vector[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.bool_vector[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_MSGS_MESSAGE_BOOLVECTOR_H
