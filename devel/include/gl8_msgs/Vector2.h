// Generated by gencpp from file gl8_msgs/Vector2.msg
// DO NOT EDIT!


#ifndef GL8_MSGS_MESSAGE_VECTOR2_H
#define GL8_MSGS_MESSAGE_VECTOR2_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gl8_msgs
{
template <class ContainerAllocator>
struct Vector2_
{
  typedef Vector2_<ContainerAllocator> Type;

  Vector2_()
    : x(0.0)
    , y(0.0)  {
    }
  Vector2_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;




  typedef boost::shared_ptr< ::gl8_msgs::Vector2_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gl8_msgs::Vector2_<ContainerAllocator> const> ConstPtr;

}; // struct Vector2_

typedef ::gl8_msgs::Vector2_<std::allocator<void> > Vector2;

typedef boost::shared_ptr< ::gl8_msgs::Vector2 > Vector2Ptr;
typedef boost::shared_ptr< ::gl8_msgs::Vector2 const> Vector2ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gl8_msgs::Vector2_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gl8_msgs::Vector2_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gl8_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'gl8_msgs': ['/home/hl/google/src/gl8_msgs /msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gl8_msgs::Vector2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gl8_msgs::Vector2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gl8_msgs::Vector2_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gl8_msgs::Vector2_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gl8_msgs::Vector2_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gl8_msgs::Vector2_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gl8_msgs::Vector2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "209f516d3eb691f0663e25cb750d67c1";
  }

  static const char* value(const ::gl8_msgs::Vector2_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x209f516d3eb691f0ULL;
  static const uint64_t static_value2 = 0x663e25cb750d67c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::gl8_msgs::Vector2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gl8_msgs/Vector2";
  }

  static const char* value(const ::gl8_msgs::Vector2_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gl8_msgs::Vector2_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n\
float64 y\n\
";
  }

  static const char* value(const ::gl8_msgs::Vector2_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gl8_msgs::Vector2_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vector2_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gl8_msgs::Vector2_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gl8_msgs::Vector2_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GL8_MSGS_MESSAGE_VECTOR2_H
