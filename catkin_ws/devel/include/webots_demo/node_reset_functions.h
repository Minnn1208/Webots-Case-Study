// Generated by gencpp from file webots_demo/node_reset_functions.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_NODE_RESET_FUNCTIONS_H
#define WEBOTS_DEMO_MESSAGE_NODE_RESET_FUNCTIONS_H

#include <ros/service_traits.h>


#include <webots_demo/node_reset_functionsRequest.h>
#include <webots_demo/node_reset_functionsResponse.h>


namespace webots_demo
{

struct node_reset_functions
{

typedef node_reset_functionsRequest Request;
typedef node_reset_functionsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct node_reset_functions
} // namespace webots_demo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::webots_demo::node_reset_functions > {
  static const char* value()
  {
    return "594d3b785623c78d3382c6628faa0f8c";
  }

  static const char* value(const ::webots_demo::node_reset_functions&) { return value(); }
};

template<>
struct DataType< ::webots_demo::node_reset_functions > {
  static const char* value()
  {
    return "webots_demo/node_reset_functions";
  }

  static const char* value(const ::webots_demo::node_reset_functions&) { return value(); }
};


// service_traits::MD5Sum< ::webots_demo::node_reset_functionsRequest> should match
// service_traits::MD5Sum< ::webots_demo::node_reset_functions >
template<>
struct MD5Sum< ::webots_demo::node_reset_functionsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::node_reset_functions >::value();
  }
  static const char* value(const ::webots_demo::node_reset_functionsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::node_reset_functionsRequest> should match
// service_traits::DataType< ::webots_demo::node_reset_functions >
template<>
struct DataType< ::webots_demo::node_reset_functionsRequest>
{
  static const char* value()
  {
    return DataType< ::webots_demo::node_reset_functions >::value();
  }
  static const char* value(const ::webots_demo::node_reset_functionsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::webots_demo::node_reset_functionsResponse> should match
// service_traits::MD5Sum< ::webots_demo::node_reset_functions >
template<>
struct MD5Sum< ::webots_demo::node_reset_functionsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::node_reset_functions >::value();
  }
  static const char* value(const ::webots_demo::node_reset_functionsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::node_reset_functionsResponse> should match
// service_traits::DataType< ::webots_demo::node_reset_functions >
template<>
struct DataType< ::webots_demo::node_reset_functionsResponse>
{
  static const char* value()
  {
    return DataType< ::webots_demo::node_reset_functions >::value();
  }
  static const char* value(const ::webots_demo::node_reset_functionsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_NODE_RESET_FUNCTIONS_H
