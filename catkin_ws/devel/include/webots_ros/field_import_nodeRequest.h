// Generated by gencpp from file webots_ros/field_import_nodeRequest.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_FIELD_IMPORT_NODEREQUEST_H
#define WEBOTS_ROS_MESSAGE_FIELD_IMPORT_NODEREQUEST_H


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
struct field_import_nodeRequest_
{
  typedef field_import_nodeRequest_<ContainerAllocator> Type;

  field_import_nodeRequest_()
    : field(0)
    , position(0)
    , filename()  {
    }
  field_import_nodeRequest_(const ContainerAllocator& _alloc)
    : field(0)
    , position(0)
    , filename(_alloc)  {
  (void)_alloc;
    }



   typedef uint64_t _field_type;
  _field_type field;

   typedef int32_t _position_type;
  _position_type position;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filename_type;
  _filename_type filename;





  typedef boost::shared_ptr< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct field_import_nodeRequest_

typedef ::webots_ros::field_import_nodeRequest_<std::allocator<void> > field_import_nodeRequest;

typedef boost::shared_ptr< ::webots_ros::field_import_nodeRequest > field_import_nodeRequestPtr;
typedef boost::shared_ptr< ::webots_ros::field_import_nodeRequest const> field_import_nodeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_ros::field_import_nodeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::webots_ros::field_import_nodeRequest_<ContainerAllocator1> & lhs, const ::webots_ros::field_import_nodeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.field == rhs.field &&
    lhs.position == rhs.position &&
    lhs.filename == rhs.filename;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::webots_ros::field_import_nodeRequest_<ContainerAllocator1> & lhs, const ::webots_ros::field_import_nodeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace webots_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ddb176ab5df764526d3b579fb7de9823";
  }

  static const char* value(const ::webots_ros::field_import_nodeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xddb176ab5df76452ULL;
  static const uint64_t static_value2 = 0x6d3b579fb7de9823ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_ros/field_import_nodeRequest";
  }

  static const char* value(const ::webots_ros::field_import_nodeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 field\n"
"int32 position\n"
"string filename\n"
;
  }

  static const char* value(const ::webots_ros::field_import_nodeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.field);
      stream.next(m.position);
      stream.next(m.filename);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct field_import_nodeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_ros::field_import_nodeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_ros::field_import_nodeRequest_<ContainerAllocator>& v)
  {
    s << indent << "field: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.field);
    s << indent << "position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position);
    s << indent << "filename: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filename);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_FIELD_IMPORT_NODEREQUEST_H
