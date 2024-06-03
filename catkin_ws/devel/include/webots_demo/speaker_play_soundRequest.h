// Generated by gencpp from file webots_demo/speaker_play_soundRequest.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_SPEAKER_PLAY_SOUNDREQUEST_H
#define WEBOTS_DEMO_MESSAGE_SPEAKER_PLAY_SOUNDREQUEST_H


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
struct speaker_play_soundRequest_
{
  typedef speaker_play_soundRequest_<ContainerAllocator> Type;

  speaker_play_soundRequest_()
    : sound()
    , volume(0.0)
    , pitch(0.0)
    , balance(0.0)
    , loop(0)  {
    }
  speaker_play_soundRequest_(const ContainerAllocator& _alloc)
    : sound(_alloc)
    , volume(0.0)
    , pitch(0.0)
    , balance(0.0)
    , loop(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _sound_type;
  _sound_type sound;

   typedef double _volume_type;
  _volume_type volume;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _balance_type;
  _balance_type balance;

   typedef int8_t _loop_type;
  _loop_type loop;





  typedef boost::shared_ptr< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> const> ConstPtr;

}; // struct speaker_play_soundRequest_

typedef ::webots_demo::speaker_play_soundRequest_<std::allocator<void> > speaker_play_soundRequest;

typedef boost::shared_ptr< ::webots_demo::speaker_play_soundRequest > speaker_play_soundRequestPtr;
typedef boost::shared_ptr< ::webots_demo::speaker_play_soundRequest const> speaker_play_soundRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator1> & lhs, const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator2> & rhs)
{
  return lhs.sound == rhs.sound &&
    lhs.volume == rhs.volume &&
    lhs.pitch == rhs.pitch &&
    lhs.balance == rhs.balance &&
    lhs.loop == rhs.loop;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator1> & lhs, const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6dbd4a93693dce0672c3d423cfbc9b11";
  }

  static const char* value(const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6dbd4a93693dce06ULL;
  static const uint64_t static_value2 = 0x72c3d423cfbc9b11ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_demo/speaker_play_soundRequest";
  }

  static const char* value(const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string sound\n"
"float64 volume\n"
"float64 pitch\n"
"float64 balance\n"
"int8 loop\n"
;
  }

  static const char* value(const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sound);
      stream.next(m.volume);
      stream.next(m.pitch);
      stream.next(m.balance);
      stream.next(m.loop);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct speaker_play_soundRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_demo::speaker_play_soundRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_demo::speaker_play_soundRequest_<ContainerAllocator>& v)
  {
    s << indent << "sound: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.sound);
    s << indent << "volume: ";
    Printer<double>::stream(s, indent + "  ", v.volume);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "balance: ";
    Printer<double>::stream(s, indent + "  ", v.balance);
    s << indent << "loop: ";
    Printer<int8_t>::stream(s, indent + "  ", v.loop);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_SPEAKER_PLAY_SOUNDREQUEST_H
