// Generated by gencpp from file webots_demo/get_stringResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_GET_STRINGRESPONSE_H
#define WEBOTS_DEMO_MESSAGE_GET_STRINGRESPONSE_H


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
struct get_stringResponse_
{
  typedef get_stringResponse_<ContainerAllocator> Type;

  get_stringResponse_()
    : value()  {
    }
  get_stringResponse_(const ContainerAllocator& _alloc)
    : value(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::webots_demo::get_stringResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_demo::get_stringResponse_<ContainerAllocator> const> ConstPtr;

}; // struct get_stringResponse_

typedef ::webots_demo::get_stringResponse_<std::allocator<void> > get_stringResponse;

typedef boost::shared_ptr< ::webots_demo::get_stringResponse > get_stringResponsePtr;
typedef boost::shared_ptr< ::webots_demo::get_stringResponse const> get_stringResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_demo::get_stringResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_demo::get_stringResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_demo::get_stringResponse_<ContainerAllocator1> & lhs, const ::webots_demo::get_stringResponse_<ContainerAllocator2> & rhs)
{
  return lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_demo::get_stringResponse_<ContainerAllocator1> & lhs, const ::webots_demo::get_stringResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_demo::get_stringResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_demo::get_stringResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::get_stringResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::get_stringResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::get_stringResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::get_stringResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_demo::get_stringResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "64e58419496c7248b4ef25731f88b8c3";
  }

  static const char* value(const ::webots_demo::get_stringResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x64e58419496c7248ULL;
  static const uint64_t static_value2 = 0xb4ef25731f88b8c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_demo::get_stringResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_demo/get_stringResponse";
  }

  static const char* value(const ::webots_demo::get_stringResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_demo::get_stringResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string value\n"
"\n"
;
  }

  static const char* value(const ::webots_demo::get_stringResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_demo::get_stringResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_stringResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_demo::get_stringResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_demo::get_stringResponse_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_GET_STRINGRESPONSE_H
