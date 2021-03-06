// Generated by gencpp from file can_msgs/MagFitInfoArray.msg
// DO NOT EDIT!


#ifndef CAN_MSGS_MESSAGE_MAGFITINFOARRAY_H
#define CAN_MSGS_MESSAGE_MAGFITINFOARRAY_H


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
struct MagFitInfoArray_
{
  typedef MagFitInfoArray_<ContainerAllocator> Type;

  MagFitInfoArray_()
    : header()
    , TimeOfIssue()
    , MagnetPolarity(0)
    , frame_variance(0.0)
    , PolarityCode(0)
    , MagOffsetFromMiddle(0.0)
    , fit_variance(0.0)
    , RMS_error(0.0)
    , Mileage(0.0)  {
    }
  MagFitInfoArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , TimeOfIssue()
    , MagnetPolarity(0)
    , frame_variance(0.0)
    , PolarityCode(0)
    , MagOffsetFromMiddle(0.0)
    , fit_variance(0.0)
    , RMS_error(0.0)
    , Mileage(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef ros::Time _TimeOfIssue_type;
  _TimeOfIssue_type TimeOfIssue;

   typedef int32_t _MagnetPolarity_type;
  _MagnetPolarity_type MagnetPolarity;

   typedef float _frame_variance_type;
  _frame_variance_type frame_variance;

   typedef uint32_t _PolarityCode_type;
  _PolarityCode_type PolarityCode;

   typedef float _MagOffsetFromMiddle_type;
  _MagOffsetFromMiddle_type MagOffsetFromMiddle;

   typedef float _fit_variance_type;
  _fit_variance_type fit_variance;

   typedef float _RMS_error_type;
  _RMS_error_type RMS_error;

   typedef float _Mileage_type;
  _Mileage_type Mileage;




  typedef boost::shared_ptr< ::can_msgs::MagFitInfoArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::can_msgs::MagFitInfoArray_<ContainerAllocator> const> ConstPtr;

}; // struct MagFitInfoArray_

typedef ::can_msgs::MagFitInfoArray_<std::allocator<void> > MagFitInfoArray;

typedef boost::shared_ptr< ::can_msgs::MagFitInfoArray > MagFitInfoArrayPtr;
typedef boost::shared_ptr< ::can_msgs::MagFitInfoArray const> MagFitInfoArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::can_msgs::MagFitInfoArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::can_msgs::MagFitInfoArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::can_msgs::MagFitInfoArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::can_msgs::MagFitInfoArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ceab1ab410175fbe7c0e5f393ad64bd9";
  }

  static const char* value(const ::can_msgs::MagFitInfoArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xceab1ab410175fbeULL;
  static const uint64_t static_value2 = 0x7c0e5f393ad64bd9ULL;
};

template<class ContainerAllocator>
struct DataType< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "can_msgs/MagFitInfoArray";
  }

  static const char* value(const ::can_msgs::MagFitInfoArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
time TimeOfIssue\n\
\n\
int32 MagnetPolarity\n\
float32 frame_variance\n\
uint32 PolarityCode\n\
float32 MagOffsetFromMiddle\n\
float32 fit_variance\n\
float32 RMS_error\n\
float32 Mileage\n\
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

  static const char* value(const ::can_msgs::MagFitInfoArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.TimeOfIssue);
      stream.next(m.MagnetPolarity);
      stream.next(m.frame_variance);
      stream.next(m.PolarityCode);
      stream.next(m.MagOffsetFromMiddle);
      stream.next(m.fit_variance);
      stream.next(m.RMS_error);
      stream.next(m.Mileage);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MagFitInfoArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::can_msgs::MagFitInfoArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::can_msgs::MagFitInfoArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "TimeOfIssue: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.TimeOfIssue);
    s << indent << "MagnetPolarity: ";
    Printer<int32_t>::stream(s, indent + "  ", v.MagnetPolarity);
    s << indent << "frame_variance: ";
    Printer<float>::stream(s, indent + "  ", v.frame_variance);
    s << indent << "PolarityCode: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.PolarityCode);
    s << indent << "MagOffsetFromMiddle: ";
    Printer<float>::stream(s, indent + "  ", v.MagOffsetFromMiddle);
    s << indent << "fit_variance: ";
    Printer<float>::stream(s, indent + "  ", v.fit_variance);
    s << indent << "RMS_error: ";
    Printer<float>::stream(s, indent + "  ", v.RMS_error);
    s << indent << "Mileage: ";
    Printer<float>::stream(s, indent + "  ", v.Mileage);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAN_MSGS_MESSAGE_MAGFITINFOARRAY_H
