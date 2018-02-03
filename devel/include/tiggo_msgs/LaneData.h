// Generated by gencpp from file tiggo_msgs/LaneData.msg
// DO NOT EDIT!


#ifndef TIGGO_MSGS_MESSAGE_LANEDATA_H
#define TIGGO_MSGS_MESSAGE_LANEDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace tiggo_msgs
{
template <class ContainerAllocator>
struct LaneData_
{
  typedef LaneData_<ContainerAllocator> Type;

  LaneData_()
    : header()
    , lane_flag(0)
    , lane_data()  {
      lane_data.assign(0);
  }
  LaneData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , lane_flag(0)
    , lane_data()  {
  (void)_alloc;
      lane_data.assign(0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _lane_flag_type;
  _lane_flag_type lane_flag;

   typedef boost::array<int32_t, 16>  _lane_data_type;
  _lane_data_type lane_data;




  typedef boost::shared_ptr< ::tiggo_msgs::LaneData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tiggo_msgs::LaneData_<ContainerAllocator> const> ConstPtr;

}; // struct LaneData_

typedef ::tiggo_msgs::LaneData_<std::allocator<void> > LaneData;

typedef boost::shared_ptr< ::tiggo_msgs::LaneData > LaneDataPtr;
typedef boost::shared_ptr< ::tiggo_msgs::LaneData const> LaneDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tiggo_msgs::LaneData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tiggo_msgs::LaneData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tiggo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'tiggo_msgs': ['/home/hl/google/src/tiggo_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tiggo_msgs::LaneData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tiggo_msgs::LaneData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tiggo_msgs::LaneData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tiggo_msgs::LaneData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tiggo_msgs::LaneData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tiggo_msgs::LaneData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tiggo_msgs::LaneData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ee865f290c7ee859a1180551831c018b";
  }

  static const char* value(const ::tiggo_msgs::LaneData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xee865f290c7ee859ULL;
  static const uint64_t static_value2 = 0xa1180551831c018bULL;
};

template<class ContainerAllocator>
struct DataType< ::tiggo_msgs::LaneData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tiggo_msgs/LaneData";
  }

  static const char* value(const ::tiggo_msgs::LaneData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tiggo_msgs::LaneData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
int16 lane_flag\n\
int32[16] lane_data\n\
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

  static const char* value(const ::tiggo_msgs::LaneData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tiggo_msgs::LaneData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.lane_flag);
      stream.next(m.lane_data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LaneData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tiggo_msgs::LaneData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tiggo_msgs::LaneData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "lane_flag: ";
    Printer<int16_t>::stream(s, indent + "  ", v.lane_flag);
    s << indent << "lane_data[]" << std::endl;
    for (size_t i = 0; i < v.lane_data.size(); ++i)
    {
      s << indent << "  lane_data[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.lane_data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TIGGO_MSGS_MESSAGE_LANEDATA_H
