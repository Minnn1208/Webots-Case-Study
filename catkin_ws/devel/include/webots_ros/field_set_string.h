// Generated by gencpp from file webots_ros/field_set_string.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_FIELD_SET_STRING_H
#define WEBOTS_ROS_MESSAGE_FIELD_SET_STRING_H

#include <ros/service_traits.h>


#include <webots_ros/field_set_stringRequest.h>
#include <webots_ros/field_set_stringResponse.h>


namespace webots_ros
{

struct field_set_string
{

typedef field_set_stringRequest Request;
typedef field_set_stringResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct field_set_string
} // namespace webots_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::webots_ros::field_set_string > {
  static const char* value()
  {
    return "a84b2f7623a3316b5dc8470fcbf631fd";
  }

  static const char* value(const ::webots_ros::field_set_string&) { return value(); }
};

template<>
struct DataType< ::webots_ros::field_set_string > {
  static const char* value()
  {
    return "webots_ros/field_set_string";
  }

  static const char* value(const ::webots_ros::field_set_string&) { return value(); }
};


// service_traits::MD5Sum< ::webots_ros::field_set_stringRequest> should match
// service_traits::MD5Sum< ::webots_ros::field_set_string >
template<>
struct MD5Sum< ::webots_ros::field_set_stringRequest>
{
  static const char* value()
  {
    return MD5Sum< ::webots_ros::field_set_string >::value();
  }
  static const char* value(const ::webots_ros::field_set_stringRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_ros::field_set_stringRequest> should match
// service_traits::DataType< ::webots_ros::field_set_string >
template<>
struct DataType< ::webots_ros::field_set_stringRequest>
{
  static const char* value()
  {
    return DataType< ::webots_ros::field_set_string >::value();
  }
  static const char* value(const ::webots_ros::field_set_stringRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::webots_ros::field_set_stringResponse> should match
// service_traits::MD5Sum< ::webots_ros::field_set_string >
template<>
struct MD5Sum< ::webots_ros::field_set_stringResponse>
{
  static const char* value()
  {
    return MD5Sum< ::webots_ros::field_set_string >::value();
  }
  static const char* value(const ::webots_ros::field_set_stringResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_ros::field_set_stringResponse> should match
// service_traits::DataType< ::webots_ros::field_set_string >
template<>
struct DataType< ::webots_ros::field_set_stringResponse>
{
  static const char* value()
  {
    return DataType< ::webots_ros::field_set_string >::value();
  }
  static const char* value(const ::webots_ros::field_set_stringResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_FIELD_SET_STRING_H
