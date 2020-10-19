// Generated by gencpp from file light_robot/textmessage.msg
// DO NOT EDIT!


#ifndef LIGHT_ROBOT_MESSAGE_TEXTMESSAGE_H
#define LIGHT_ROBOT_MESSAGE_TEXTMESSAGE_H

#include <ros/service_traits.h>


#include <light_robot/textmessageRequest.h>
#include <light_robot/textmessageResponse.h>


namespace light_robot
{

struct textmessage
{

typedef textmessageRequest Request;
typedef textmessageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct textmessage
} // namespace light_robot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::light_robot::textmessage > {
  static const char* value()
  {
    return "b4834320f090e9235da913886638fb4e";
  }

  static const char* value(const ::light_robot::textmessage&) { return value(); }
};

template<>
struct DataType< ::light_robot::textmessage > {
  static const char* value()
  {
    return "light_robot/textmessage";
  }

  static const char* value(const ::light_robot::textmessage&) { return value(); }
};


// service_traits::MD5Sum< ::light_robot::textmessageRequest> should match
// service_traits::MD5Sum< ::light_robot::textmessage >
template<>
struct MD5Sum< ::light_robot::textmessageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::light_robot::textmessage >::value();
  }
  static const char* value(const ::light_robot::textmessageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::light_robot::textmessageRequest> should match
// service_traits::DataType< ::light_robot::textmessage >
template<>
struct DataType< ::light_robot::textmessageRequest>
{
  static const char* value()
  {
    return DataType< ::light_robot::textmessage >::value();
  }
  static const char* value(const ::light_robot::textmessageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::light_robot::textmessageResponse> should match
// service_traits::MD5Sum< ::light_robot::textmessage >
template<>
struct MD5Sum< ::light_robot::textmessageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::light_robot::textmessage >::value();
  }
  static const char* value(const ::light_robot::textmessageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::light_robot::textmessageResponse> should match
// service_traits::DataType< ::light_robot::textmessage >
template<>
struct DataType< ::light_robot::textmessageResponse>
{
  static const char* value()
  {
    return DataType< ::light_robot::textmessage >::value();
  }
  static const char* value(const ::light_robot::textmessageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LIGHT_ROBOT_MESSAGE_TEXTMESSAGE_H