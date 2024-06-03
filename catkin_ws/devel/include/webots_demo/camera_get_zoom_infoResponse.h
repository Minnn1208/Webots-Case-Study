// Generated by gencpp from file webots_demo/camera_get_zoom_infoResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_CAMERA_GET_ZOOM_INFORESPONSE_H
#define WEBOTS_DEMO_MESSAGE_CAMERA_GET_ZOOM_INFORESPONSE_H


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
struct camera_get_zoom_infoResponse_
{
  typedef camera_get_zoom_infoResponse_<ContainerAllocator> Type;

  camera_get_zoom_infoResponse_()
    : minFov(0.0)
    , maxFov(0.0)  {
    }
  camera_get_zoom_infoResponse_(const ContainerAllocator& _alloc)
    : minFov(0.0)
    , maxFov(0.0)  {
  (void)_alloc;
    }



   typedef double _minFov_type;
  _minFov_type minFov;

   typedef double _maxFov_type;
  _maxFov_type maxFov;





  typedef boost::shared_ptr< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> const> ConstPtr;

}; // struct camera_get_zoom_infoResponse_

typedef ::webots_demo::camera_get_zoom_infoResponse_<std::allocator<void> > camera_get_zoom_infoResponse;

typedef boost::shared_ptr< ::webots_demo::camera_get_zoom_infoResponse > camera_get_zoom_infoResponsePtr;
typedef boost::shared_ptr< ::webots_demo::camera_get_zoom_infoResponse const> camera_get_zoom_infoResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator1> & lhs, const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator2> & rhs)
{
  return lhs.minFov == rhs.minFov &&
    lhs.maxFov == rhs.maxFov;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator1> & lhs, const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "09ec32bcace1e2e7e22f392cd9bb4659";
  }

  static const char* value(const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x09ec32bcace1e2e7ULL;
  static const uint64_t static_value2 = 0xe22f392cd9bb4659ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_demo/camera_get_zoom_infoResponse";
  }

  static const char* value(const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 minFov\n"
"float64 maxFov\n"
"\n"
;
  }

  static const char* value(const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.minFov);
      stream.next(m.maxFov);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct camera_get_zoom_infoResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_demo::camera_get_zoom_infoResponse_<ContainerAllocator>& v)
  {
    s << indent << "minFov: ";
    Printer<double>::stream(s, indent + "  ", v.minFov);
    s << indent << "maxFov: ";
    Printer<double>::stream(s, indent + "  ", v.maxFov);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_CAMERA_GET_ZOOM_INFORESPONSE_H
