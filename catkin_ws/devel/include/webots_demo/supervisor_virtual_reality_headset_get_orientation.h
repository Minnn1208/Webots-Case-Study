// Generated by gencpp from file webots_demo/supervisor_virtual_reality_headset_get_orientation.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_ORIENTATION_H
#define WEBOTS_DEMO_MESSAGE_SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_ORIENTATION_H

#include <ros/service_traits.h>


#include <webots_demo/supervisor_virtual_reality_headset_get_orientationRequest.h>
#include <webots_demo/supervisor_virtual_reality_headset_get_orientationResponse.h>


namespace webots_demo
{

struct supervisor_virtual_reality_headset_get_orientation
{

typedef supervisor_virtual_reality_headset_get_orientationRequest Request;
typedef supervisor_virtual_reality_headset_get_orientationResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct supervisor_virtual_reality_headset_get_orientation
} // namespace webots_demo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientation > {
  static const char* value()
  {
    return "1da5db090570556f67921a94715018da";
  }

  static const char* value(const ::webots_demo::supervisor_virtual_reality_headset_get_orientation&) { return value(); }
};

template<>
struct DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientation > {
  static const char* value()
  {
    return "webots_demo/supervisor_virtual_reality_headset_get_orientation";
  }

  static const char* value(const ::webots_demo::supervisor_virtual_reality_headset_get_orientation&) { return value(); }
};


// service_traits::MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientationRequest> should match
// service_traits::MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientation >
template<>
struct MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientationRequest>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientation >::value();
  }
  static const char* value(const ::webots_demo::supervisor_virtual_reality_headset_get_orientationRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientationRequest> should match
// service_traits::DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientation >
template<>
struct DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientationRequest>
{
  static const char* value()
  {
    return DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientation >::value();
  }
  static const char* value(const ::webots_demo::supervisor_virtual_reality_headset_get_orientationRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientationResponse> should match
// service_traits::MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientation >
template<>
struct MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientationResponse>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::supervisor_virtual_reality_headset_get_orientation >::value();
  }
  static const char* value(const ::webots_demo::supervisor_virtual_reality_headset_get_orientationResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientationResponse> should match
// service_traits::DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientation >
template<>
struct DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientationResponse>
{
  static const char* value()
  {
    return DataType< ::webots_demo::supervisor_virtual_reality_headset_get_orientation >::value();
  }
  static const char* value(const ::webots_demo::supervisor_virtual_reality_headset_get_orientationResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_ORIENTATION_H
