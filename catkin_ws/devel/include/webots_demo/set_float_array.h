// Generated by gencpp from file webots_demo/set_float_array.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_SET_FLOAT_ARRAY_H
#define WEBOTS_DEMO_MESSAGE_SET_FLOAT_ARRAY_H

#include <ros/service_traits.h>


#include <webots_demo/set_float_arrayRequest.h>
#include <webots_demo/set_float_arrayResponse.h>


namespace webots_demo
{

struct set_float_array
{

typedef set_float_arrayRequest Request;
typedef set_float_arrayResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct set_float_array
} // namespace webots_demo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::webots_demo::set_float_array > {
  static const char* value()
  {
    return "0fcc5d2c24929b6dbbf415b9579ddce4";
  }

  static const char* value(const ::webots_demo::set_float_array&) { return value(); }
};

template<>
struct DataType< ::webots_demo::set_float_array > {
  static const char* value()
  {
    return "webots_demo/set_float_array";
  }

  static const char* value(const ::webots_demo::set_float_array&) { return value(); }
};


// service_traits::MD5Sum< ::webots_demo::set_float_arrayRequest> should match
// service_traits::MD5Sum< ::webots_demo::set_float_array >
template<>
struct MD5Sum< ::webots_demo::set_float_arrayRequest>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::set_float_array >::value();
  }
  static const char* value(const ::webots_demo::set_float_arrayRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::set_float_arrayRequest> should match
// service_traits::DataType< ::webots_demo::set_float_array >
template<>
struct DataType< ::webots_demo::set_float_arrayRequest>
{
  static const char* value()
  {
    return DataType< ::webots_demo::set_float_array >::value();
  }
  static const char* value(const ::webots_demo::set_float_arrayRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::webots_demo::set_float_arrayResponse> should match
// service_traits::MD5Sum< ::webots_demo::set_float_array >
template<>
struct MD5Sum< ::webots_demo::set_float_arrayResponse>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::set_float_array >::value();
  }
  static const char* value(const ::webots_demo::set_float_arrayResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::set_float_arrayResponse> should match
// service_traits::DataType< ::webots_demo::set_float_array >
template<>
struct DataType< ::webots_demo::set_float_arrayResponse>
{
  static const char* value()
  {
    return DataType< ::webots_demo::set_float_array >::value();
  }
  static const char* value(const ::webots_demo::set_float_arrayResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_SET_FLOAT_ARRAY_H
