// Generated by gencpp from file webots_ros/node_get_contact_point_nodeRequest.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_NODE_GET_CONTACT_POINT_NODEREQUEST_H
#define WEBOTS_ROS_MESSAGE_NODE_GET_CONTACT_POINT_NODEREQUEST_H


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
struct node_get_contact_point_nodeRequest_
{
  typedef node_get_contact_point_nodeRequest_<ContainerAllocator> Type;

  node_get_contact_point_nodeRequest_()
    : node(0)
    , index(0)  {
    }
  node_get_contact_point_nodeRequest_(const ContainerAllocator& _alloc)
    : node(0)
    , index(0)  {
  (void)_alloc;
    }



   typedef uint64_t _node_type;
  _node_type node;

   typedef int32_t _index_type;
  _index_type index;





  typedef boost::shared_ptr< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct node_get_contact_point_nodeRequest_

typedef ::webots_ros::node_get_contact_point_nodeRequest_<std::allocator<void> > node_get_contact_point_nodeRequest;

typedef boost::shared_ptr< ::webots_ros::node_get_contact_point_nodeRequest > node_get_contact_point_nodeRequestPtr;
typedef boost::shared_ptr< ::webots_ros::node_get_contact_point_nodeRequest const> node_get_contact_point_nodeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator1> & lhs, const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.node == rhs.node &&
    lhs.index == rhs.index;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator1> & lhs, const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "07ddeeacce4a5bd7cac06cacca61cf88";
  }

  static const char* value(const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x07ddeeacce4a5bd7ULL;
  static const uint64_t static_value2 = 0xcac06cacca61cf88ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_ros/node_get_contact_point_nodeRequest";
  }

  static const char* value(const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 node\n"
"int32 index\n"
;
  }

  static const char* value(const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.node);
      stream.next(m.index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct node_get_contact_point_nodeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_ros::node_get_contact_point_nodeRequest_<ContainerAllocator>& v)
  {
    s << indent << "node: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.node);
    s << indent << "index: ";
    Printer<int32_t>::stream(s, indent + "  ", v.index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_NODE_GET_CONTACT_POINT_NODEREQUEST_H
