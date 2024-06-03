// Generated by gencpp from file webots_demo/field_remove_node.msg
// DO NOT EDIT!


#ifndef WEBOTS_DEMO_MESSAGE_FIELD_REMOVE_NODE_H
#define WEBOTS_DEMO_MESSAGE_FIELD_REMOVE_NODE_H

#include <ros/service_traits.h>


#include <webots_demo/field_remove_nodeRequest.h>
#include <webots_demo/field_remove_nodeResponse.h>


namespace webots_demo
{

struct field_remove_node
{

typedef field_remove_nodeRequest Request;
typedef field_remove_nodeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct field_remove_node
} // namespace webots_demo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::webots_demo::field_remove_node > {
  static const char* value()
  {
    return "0a2fec1b08c5be36310a1f9e7c2e36de";
  }

  static const char* value(const ::webots_demo::field_remove_node&) { return value(); }
};

template<>
struct DataType< ::webots_demo::field_remove_node > {
  static const char* value()
  {
    return "webots_demo/field_remove_node";
  }

  static const char* value(const ::webots_demo::field_remove_node&) { return value(); }
};


// service_traits::MD5Sum< ::webots_demo::field_remove_nodeRequest> should match
// service_traits::MD5Sum< ::webots_demo::field_remove_node >
template<>
struct MD5Sum< ::webots_demo::field_remove_nodeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::field_remove_node >::value();
  }
  static const char* value(const ::webots_demo::field_remove_nodeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::field_remove_nodeRequest> should match
// service_traits::DataType< ::webots_demo::field_remove_node >
template<>
struct DataType< ::webots_demo::field_remove_nodeRequest>
{
  static const char* value()
  {
    return DataType< ::webots_demo::field_remove_node >::value();
  }
  static const char* value(const ::webots_demo::field_remove_nodeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::webots_demo::field_remove_nodeResponse> should match
// service_traits::MD5Sum< ::webots_demo::field_remove_node >
template<>
struct MD5Sum< ::webots_demo::field_remove_nodeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::webots_demo::field_remove_node >::value();
  }
  static const char* value(const ::webots_demo::field_remove_nodeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_demo::field_remove_nodeResponse> should match
// service_traits::DataType< ::webots_demo::field_remove_node >
template<>
struct DataType< ::webots_demo::field_remove_nodeResponse>
{
  static const char* value()
  {
    return DataType< ::webots_demo::field_remove_node >::value();
  }
  static const char* value(const ::webots_demo::field_remove_nodeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WEBOTS_DEMO_MESSAGE_FIELD_REMOVE_NODE_H
