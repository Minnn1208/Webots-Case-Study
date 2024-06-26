// Generated by gencpp from file webots_ros/node_set_joint_positionResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_NODE_SET_JOINT_POSITIONRESPONSE_H
#define WEBOTS_ROS_MESSAGE_NODE_SET_JOINT_POSITIONRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace webots_ros
{
template <class ContainerAllocator>
struct node_set_joint_positionResponse_
{
  typedef node_set_joint_positionResponse_<ContainerAllocator> Type;

  node_set_joint_positionResponse_()
    : success(false)  {
    }
  node_set_joint_positionResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct node_set_joint_positionResponse_

typedef ::webots_ros::node_set_joint_positionResponse_<std::allocator<void> > node_set_joint_positionResponse;

typedef boost::shared_ptr< ::webots_ros::node_set_joint_positionResponse > node_set_joint_positionResponsePtr;
typedef boost::shared_ptr< ::webots_ros::node_set_joint_positionResponse const> node_set_joint_positionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator1> & lhs, const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator1> & lhs, const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_ros/node_set_joint_positionResponse";
  }

  static const char* value(const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct node_set_joint_positionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_ros::node_set_joint_positionResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_NODE_SET_JOINT_POSITIONRESPONSE_H
