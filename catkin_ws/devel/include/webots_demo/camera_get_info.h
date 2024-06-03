// Generated by gencpp from file webots_demo/camera_get_info.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_CAMERA_GET_INFO_H
#define WEBOTS_DEMO_MESSAGE_CAMERA_GET_INFO_H

#include <ros/service_traits.h>


#include <webots_demo/camera_get_infoRequest.h>
#include <webots_demo/camera_get_infoResponse.h>


namespace webots_demo
{

struct camera_get_info
{

typedef camera_get_infoRequest Request;
typedef camera_get_infoResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct camera_get_info
} // namespace webots_demo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::webots_demo::camera_get_info > {
  static const char* value()
  {
    return "27c62b916852ab73ab27a40703fb9ea5";
  }

  static const char* value(const ::webots_demo::camera_get_info&) { return value(); }
};

template<>
struct DataType< ::webots_demo::camera_get_info > {
  static const char* value()
  {
    return "webots_demo/camera_get_info";
  }

  static const char* value(const ::webots_demo::camera_get_info&) { return value(); }
};


// service_traits::MD5Sum< ::webots_demo::camera_get_infoRequest> should match
// service_traits::MD5Sum< ::webots_demo::camera_get_info >
template<>
struct MD5Sum< ::webots_demo::camera_get_infoRequest>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::camera_get_info >::value();
  }
  static const char* value(const ::webots_demo::camera_get_infoRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::camera_get_infoRequest> should match
// service_traits::DataType< ::webots_demo::camera_get_info >
template<>
struct DataType< ::webots_demo::camera_get_infoRequest>
{
  static const char* value()
  {
    return DataType< ::webots_demo::camera_get_info >::value();
  }
  static const char* value(const ::webots_demo::camera_get_infoRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::webots_demo::camera_get_infoResponse> should match
// service_traits::MD5Sum< ::webots_demo::camera_get_info >
template<>
struct MD5Sum< ::webots_demo::camera_get_infoResponse>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::camera_get_info >::value();
  }
  static const char* value(const ::webots_demo::camera_get_infoResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::camera_get_infoResponse> should match
// service_traits::DataType< ::webots_demo::camera_get_info >
template<>
struct DataType< ::webots_demo::camera_get_infoResponse>
{
  static const char* value()
  {
    return DataType< ::webots_demo::camera_get_info >::value();
  }
  static const char* value(const ::webots_demo::camera_get_infoResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_CAMERA_GET_INFO_H
