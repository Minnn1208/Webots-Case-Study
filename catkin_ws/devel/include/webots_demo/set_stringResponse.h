// Generated by gencpp from file webots_demo/set_stringResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_SET_STRINGRESPONSE_H
#define WEBOTS_DEMO_MESSAGE_SET_STRINGRESPONSE_H


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
struct set_stringResponse_
{
  typedef set_stringResponse_<ContainerAllocator> Type;

  set_stringResponse_()
    : success(false)  {
    }
  set_stringResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::webots_demo::set_stringResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_demo::set_stringResponse_<ContainerAllocator> const> ConstPtr;

}; // struct set_stringResponse_

typedef ::webots_demo::set_stringResponse_<std::allocator<void> > set_stringResponse;

typedef boost::shared_ptr< ::webots_demo::set_stringResponse > set_stringResponsePtr;
typedef boost::shared_ptr< ::webots_demo::set_stringResponse const> set_stringResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_demo::set_stringResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_demo::set_stringResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_demo::set_stringResponse_<ContainerAllocator1> & lhs, const ::webots_demo::set_stringResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_demo::set_stringResponse_<ContainerAllocator1> & lhs, const ::webots_demo::set_stringResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_demo::set_stringResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_demo::set_stringResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::set_stringResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::set_stringResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::set_stringResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::set_stringResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_demo::set_stringResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::webots_demo::set_stringResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_demo::set_stringResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_demo/set_stringResponse";
  }

  static const char* value(const ::webots_demo::set_stringResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_demo::set_stringResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::webots_demo::set_stringResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_demo::set_stringResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_stringResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_demo::set_stringResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_demo::set_stringResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_SET_STRINGRESPONSE_H
