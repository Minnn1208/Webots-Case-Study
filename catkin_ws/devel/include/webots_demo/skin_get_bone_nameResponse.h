// Generated by gencpp from file webots_demo/skin_get_bone_nameResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_SKIN_GET_BONE_NAMERESPONSE_H
#define WEBOTS_DEMO_MESSAGE_SKIN_GET_BONE_NAMERESPONSE_H


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
struct skin_get_bone_nameResponse_
{
  typedef skin_get_bone_nameResponse_<ContainerAllocator> Type;

  skin_get_bone_nameResponse_()
    : name()  {
    }
  skin_get_bone_nameResponse_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> const> ConstPtr;

}; // struct skin_get_bone_nameResponse_

typedef ::webots_demo::skin_get_bone_nameResponse_<std::allocator<void> > skin_get_bone_nameResponse;

typedef boost::shared_ptr< ::webots_demo::skin_get_bone_nameResponse > skin_get_bone_nameResponsePtr;
typedef boost::shared_ptr< ::webots_demo::skin_get_bone_nameResponse const> skin_get_bone_nameResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator1> & lhs, const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator1> & lhs, const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_demo/skin_get_bone_nameResponse";
  }

  static const char* value(const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"\n"
;
  }

  static const char* value(const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct skin_get_bone_nameResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_demo::skin_get_bone_nameResponse_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_SKIN_GET_BONE_NAMERESPONSE_H
