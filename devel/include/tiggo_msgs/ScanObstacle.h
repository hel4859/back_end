// Generated by gencpp from file tiggo_msgs/ScanObstacle.msg
// DO NOT EDIT!


#ifndef TIGGO_MSGS_MESSAGE_SCANOBSTACLE_H
#define TIGGO_MSGS_MESSAGE_SCANOBSTACLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tiggo_msgs
{
template <class ContainerAllocator>
struct ScanObstacle_
{
  typedef ScanObstacle_<ContainerAllocator> Type;

  ScanObstacle_()
    : exists(0)
    , min_distance(0.0)  {
    }
  ScanObstacle_(const ContainerAllocator& _alloc)
    : exists(0)
    , min_distance(0.0)  {
  (void)_alloc;
    }



   typedef int8_t _exists_type;
  _exists_type exists;

   typedef double _min_distance_type;
  _min_distance_type min_distance;




  typedef boost::shared_ptr< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> const> ConstPtr;

}; // struct ScanObstacle_

typedef ::tiggo_msgs::ScanObstacle_<std::allocator<void> > ScanObstacle;

typedef boost::shared_ptr< ::tiggo_msgs::ScanObstacle > ScanObstaclePtr;
typedef boost::shared_ptr< ::tiggo_msgs::ScanObstacle const> ScanObstacleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tiggo_msgs::ScanObstacle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d0450754306bcc24f48a507171ffd8ad";
  }

  static const char* value(const ::tiggo_msgs::ScanObstacle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd0450754306bcc24ULL;
  static const uint64_t static_value2 = 0xf48a507171ffd8adULL;
};

template<class ContainerAllocator>
struct DataType< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tiggo_msgs/ScanObstacle";
  }

  static const char* value(const ::tiggo_msgs::ScanObstacle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 exists\n\
float64 min_distance\n\
";
  }

  static const char* value(const ::tiggo_msgs::ScanObstacle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.exists);
      stream.next(m.min_distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ScanObstacle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tiggo_msgs::ScanObstacle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tiggo_msgs::ScanObstacle_<ContainerAllocator>& v)
  {
    s << indent << "exists: ";
    Printer<int8_t>::stream(s, indent + "  ", v.exists);
    s << indent << "min_distance: ";
    Printer<double>::stream(s, indent + "  ", v.min_distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TIGGO_MSGS_MESSAGE_SCANOBSTACLE_H
