// Generated by gencpp from file webots_demo/range_finder_get_infoResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_RANGE_FINDER_GET_INFORESPONSE_H
#define WEBOTS_DEMO_MESSAGE_RANGE_FINDER_GET_INFORESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace webots_demo
{
template <class ContainerAllocator>
struct range_finder_get_infoResponse_
{
  typedef range_finder_get_infoResponse_<ContainerAllocator> Type;

  range_finder_get_infoResponse_()
    : width(0)
    , height(0)
    , Fov(0.0)
    , minRange(0.0)
    , maxRange(0.0)  {
    }
  range_finder_get_infoResponse_(const ContainerAllocator& _alloc)
    : width(0)
    , height(0)
    , Fov(0.0)
    , minRange(0.0)
    , maxRange(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _width_type;
  _width_type width;

   typedef uint32_t _height_type;
  _height_type height;

   typedef double _Fov_type;
  _Fov_type Fov;

   typedef double _minRange_type;
  _minRange_type minRange;

   typedef double _maxRange_type;
  _maxRange_type maxRange;





  typedef boost::shared_ptr< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> const> ConstPtr;

}; // struct range_finder_get_infoResponse_

typedef ::webots_demo::range_finder_get_infoResponse_<std::allocator<void> > range_finder_get_infoResponse;

typedef boost::shared_ptr< ::webots_demo::range_finder_get_infoResponse > range_finder_get_infoResponsePtr;
typedef boost::shared_ptr< ::webots_demo::range_finder_get_infoResponse const> range_finder_get_infoResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator1> & lhs, const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator2> & rhs)
{
  return lhs.width == rhs.width &&
    lhs.height == rhs.height &&
    lhs.Fov == rhs.Fov &&
    lhs.minRange == rhs.minRange &&
    lhs.maxRange == rhs.maxRange;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator1> & lhs, const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ba45c4359ffe949874e90cf1daa6659f";
  }

  static const char* value(const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xba45c4359ffe9498ULL;
  static const uint64_t static_value2 = 0x74e90cf1daa6659fULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_demo/range_finder_get_infoResponse";
  }

  static const char* value(const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 width\n"
"uint32 height\n"
"float64 Fov\n"
"float64 minRange\n"
"float64 maxRange\n"
"\n"
;
  }

  static const char* value(const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.Fov);
      stream.next(m.minRange);
      stream.next(m.maxRange);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct range_finder_get_infoResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_demo::range_finder_get_infoResponse_<ContainerAllocator>& v)
  {
    s << indent << "width: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.height);
    s << indent << "Fov: ";
    Printer<double>::stream(s, indent + "  ", v.Fov);
    s << indent << "minRange: ";
    Printer<double>::stream(s, indent + "  ", v.minRange);
    s << indent << "maxRange: ";
    Printer<double>::stream(s, indent + "  ", v.maxRange);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_RANGE_FINDER_GET_INFORESPONSE_H
