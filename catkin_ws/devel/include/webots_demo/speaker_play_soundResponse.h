// Generated by gencpp from file webots_demo/speaker_play_soundResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_SPEAKER_PLAY_SOUNDRESPONSE_H
#define WEBOTS_DEMO_MESSAGE_SPEAKER_PLAY_SOUNDRESPONSE_H


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
struct speaker_play_soundResponse_
{
  typedef speaker_play_soundResponse_<ContainerAllocator> Type;

  speaker_play_soundResponse_()
    : success(0)  {
    }
  speaker_play_soundResponse_(const ContainerAllocator& _alloc)
    : success(0)  {
  (void)_alloc;
    }



   typedef int8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> const> ConstPtr;

}; // struct speaker_play_soundResponse_

typedef ::webots_demo::speaker_play_soundResponse_<std::allocator<void> > speaker_play_soundResponse;

typedef boost::shared_ptr< ::webots_demo::speaker_play_soundResponse > speaker_play_soundResponsePtr;
typedef boost::shared_ptr< ::webots_demo::speaker_play_soundResponse const> speaker_play_soundResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator1> & lhs, const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator1> & lhs, const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0b13460cb14006d3852674b4c614f25f";
  }

  static const char* value(const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0b13460cb14006d3ULL;
  static const uint64_t static_value2 = 0x852674b4c614f25fULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_demo/speaker_play_soundResponse";
  }

  static const char* value(const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 success\n"
"\n"
;
  }

  static const char* value(const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct speaker_play_soundResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_demo::speaker_play_soundResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_demo::speaker_play_soundResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<int8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_SPEAKER_PLAY_SOUNDRESPONSE_H
