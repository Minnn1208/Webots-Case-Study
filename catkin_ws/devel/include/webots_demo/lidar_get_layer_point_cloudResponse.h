// Generated by gencpp from file webots_demo/lidar_get_layer_point_cloudResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_LIDAR_GET_LAYER_POINT_CLOUDRESPONSE_H
#define WEBOTS_DEMO_MESSAGE_LIDAR_GET_LAYER_POINT_CLOUDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/PointCloud.h>

namespace webots_demo
{
template <class ContainerAllocator>
struct lidar_get_layer_point_cloudResponse_
{
  typedef lidar_get_layer_point_cloudResponse_<ContainerAllocator> Type;

  lidar_get_layer_point_cloudResponse_()
    : pointCloud()  {
    }
  lidar_get_layer_point_cloudResponse_(const ContainerAllocator& _alloc)
    : pointCloud(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::PointCloud_<ContainerAllocator>  _pointCloud_type;
  _pointCloud_type pointCloud;





  typedef boost::shared_ptr< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> const> ConstPtr;

}; // struct lidar_get_layer_point_cloudResponse_

typedef ::webots_demo::lidar_get_layer_point_cloudResponse_<std::allocator<void> > lidar_get_layer_point_cloudResponse;

typedef boost::shared_ptr< ::webots_demo::lidar_get_layer_point_cloudResponse > lidar_get_layer_point_cloudResponsePtr;
typedef boost::shared_ptr< ::webots_demo::lidar_get_layer_point_cloudResponse const> lidar_get_layer_point_cloudResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator1> & lhs, const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator2> & rhs)
{
  return lhs.pointCloud == rhs.pointCloud;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator1> & lhs, const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_demo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e08e3c13c98d23184c44ac2bd82ce8b4";
  }

  static const char* value(const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe08e3c13c98d2318ULL;
  static const uint64_t static_value2 = 0x4c44ac2bd82ce8b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_demo/lidar_get_layer_point_cloudResponse";
  }

  static const char* value(const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/PointCloud pointCloud\n"
"\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud\n"
"# This message holds a collection of 3d points, plus optional additional\n"
"# information about each point.\n"
"\n"
"# Time of sensor data acquisition, coordinate frame ID.\n"
"Header header\n"
"\n"
"# Array of 3d points. Each Point32 should be interpreted as a 3d point\n"
"# in the frame given in the header.\n"
"geometry_msgs/Point32[] points\n"
"\n"
"# Each channel should have the same number of elements as points array,\n"
"# and the data in each channel should correspond 1:1 with each point.\n"
"# Channel names in common practice are listed in ChannelFloat32.msg.\n"
"ChannelFloat32[] channels\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"================================================================================\n"
"MSG: sensor_msgs/ChannelFloat32\n"
"# This message is used by the PointCloud message to hold optional data\n"
"# associated with each point in the cloud. The length of the values\n"
"# array should be the same as the length of the points array in the\n"
"# PointCloud, and each value should be associated with the corresponding\n"
"# point.\n"
"\n"
"# Channel names in existing practice include:\n"
"#   \"u\", \"v\" - row and column (respectively) in the left stereo image.\n"
"#              This is opposite to usual conventions but remains for\n"
"#              historical reasons. The newer PointCloud2 message has no\n"
"#              such problem.\n"
"#   \"rgb\" - For point clouds produced by color stereo cameras. uint8\n"
"#           (R,G,B) values packed into the least significant 24 bits,\n"
"#           in order.\n"
"#   \"intensity\" - laser or pixel intensity.\n"
"#   \"distance\"\n"
"\n"
"# The channel name should give semantics of the channel (e.g.\n"
"# \"intensity\" instead of \"value\").\n"
"string name\n"
"\n"
"# The values array should be 1-1 with the elements of the associated\n"
"# PointCloud.\n"
"float32[] values\n"
;
  }

  static const char* value(const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pointCloud);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lidar_get_layer_point_cloudResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_demo::lidar_get_layer_point_cloudResponse_<ContainerAllocator>& v)
  {
    s << indent << "pointCloud: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud_<ContainerAllocator> >::stream(s, indent + "  ", v.pointCloud);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_LIDAR_GET_LAYER_POINT_CLOUDRESPONSE_H
