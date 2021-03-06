// Generated by gencpp from file tiggo_msgs/Line2f.msg
// DO NOT EDIT!


#ifndef TIGGO_MSGS_MESSAGE_LINE2F_H
#define TIGGO_MSGS_MESSAGE_LINE2F_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <tiggo_msgs/Point2f.h>
#include <tiggo_msgs/Point2f.h>

namespace tiggo_msgs
{
template <class ContainerAllocator>
struct Line2f_
{
  typedef Line2f_<ContainerAllocator> Type;

  Line2f_()
    : vaild(0)
    , pt0()
    , pt1()
    , slope(0.0)
    , angle(0.0)
    , len(0.0)  {
    }
  Line2f_(const ContainerAllocator& _alloc)
    : vaild(0)
    , pt0(_alloc)
    , pt1(_alloc)
    , slope(0.0)
    , angle(0.0)
    , len(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _vaild_type;
  _vaild_type vaild;

   typedef  ::tiggo_msgs::Point2f_<ContainerAllocator>  _pt0_type;
  _pt0_type pt0;

   typedef  ::tiggo_msgs::Point2f_<ContainerAllocator>  _pt1_type;
  _pt1_type pt1;

   typedef double _slope_type;
  _slope_type slope;

   typedef double _angle_type;
  _angle_type angle;

   typedef double _len_type;
  _len_type len;




  typedef boost::shared_ptr< ::tiggo_msgs::Line2f_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tiggo_msgs::Line2f_<ContainerAllocator> const> ConstPtr;

}; // struct Line2f_

typedef ::tiggo_msgs::Line2f_<std::allocator<void> > Line2f;

typedef boost::shared_ptr< ::tiggo_msgs::Line2f > Line2fPtr;
typedef boost::shared_ptr< ::tiggo_msgs::Line2f const> Line2fConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tiggo_msgs::Line2f_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tiggo_msgs::Line2f_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tiggo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'tiggo_msgs': ['/home/hl/google/src/tiggo_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tiggo_msgs::Line2f_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tiggo_msgs::Line2f_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tiggo_msgs::Line2f_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tiggo_msgs::Line2f_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tiggo_msgs::Line2f_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tiggo_msgs::Line2f_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tiggo_msgs::Line2f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "31da709181b047fe7aaf9f5ea4997c40";
  }

  static const char* value(const ::tiggo_msgs::Line2f_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x31da709181b047feULL;
  static const uint64_t static_value2 = 0x7aaf9f5ea4997c40ULL;
};

template<class ContainerAllocator>
struct DataType< ::tiggo_msgs::Line2f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tiggo_msgs/Line2f";
  }

  static const char* value(const ::tiggo_msgs::Line2f_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tiggo_msgs::Line2f_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 vaild\n\
Point2f pt0\n\
Point2f pt1\n\
float64 slope\n\
float64 angle\n\
float64 len\n\
\n\
================================================================================\n\
MSG: tiggo_msgs/Point2f\n\
float32 x\n\
float32 y\n\
";
  }

  static const char* value(const ::tiggo_msgs::Line2f_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tiggo_msgs::Line2f_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vaild);
      stream.next(m.pt0);
      stream.next(m.pt1);
      stream.next(m.slope);
      stream.next(m.angle);
      stream.next(m.len);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Line2f_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tiggo_msgs::Line2f_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tiggo_msgs::Line2f_<ContainerAllocator>& v)
  {
    s << indent << "vaild: ";
    Printer<int8_t>::stream(s, indent + "  ", v.vaild);
    s << indent << "pt0: ";
    s << std::endl;
    Printer< ::tiggo_msgs::Point2f_<ContainerAllocator> >::stream(s, indent + "  ", v.pt0);
    s << indent << "pt1: ";
    s << std::endl;
    Printer< ::tiggo_msgs::Point2f_<ContainerAllocator> >::stream(s, indent + "  ", v.pt1);
    s << indent << "slope: ";
    Printer<double>::stream(s, indent + "  ", v.slope);
    s << indent << "angle: ";
    Printer<double>::stream(s, indent + "  ", v.angle);
    s << indent << "len: ";
    Printer<double>::stream(s, indent + "  ", v.len);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TIGGO_MSGS_MESSAGE_LINE2F_H
