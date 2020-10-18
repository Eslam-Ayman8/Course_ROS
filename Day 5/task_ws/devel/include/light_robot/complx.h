// Generated by gencpp from file light_robot/complx.msg
// DO NOT EDIT!


#ifndef LIGHT_ROBOT_MESSAGE_COMPLX_H
#define LIGHT_ROBOT_MESSAGE_COMPLX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace light_robot
{
template <class ContainerAllocator>
struct complx_
{
  typedef complx_<ContainerAllocator> Type;

  complx_()
    : real(0)
    , imaginary(0)  {
    }
  complx_(const ContainerAllocator& _alloc)
    : real(0)
    , imaginary(0)  {
  (void)_alloc;
    }



   typedef int32_t _real_type;
  _real_type real;

   typedef int32_t _imaginary_type;
  _imaginary_type imaginary;





  typedef boost::shared_ptr< ::light_robot::complx_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::light_robot::complx_<ContainerAllocator> const> ConstPtr;

}; // struct complx_

typedef ::light_robot::complx_<std::allocator<void> > complx;

typedef boost::shared_ptr< ::light_robot::complx > complxPtr;
typedef boost::shared_ptr< ::light_robot::complx const> complxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::light_robot::complx_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::light_robot::complx_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::light_robot::complx_<ContainerAllocator1> & lhs, const ::light_robot::complx_<ContainerAllocator2> & rhs)
{
  return lhs.real == rhs.real &&
    lhs.imaginary == rhs.imaginary;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::light_robot::complx_<ContainerAllocator1> & lhs, const ::light_robot::complx_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace light_robot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::light_robot::complx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::light_robot::complx_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::light_robot::complx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::light_robot::complx_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::light_robot::complx_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::light_robot::complx_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::light_robot::complx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "29494601c99dbe58165af75a7e636359";
  }

  static const char* value(const ::light_robot::complx_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x29494601c99dbe58ULL;
  static const uint64_t static_value2 = 0x165af75a7e636359ULL;
};

template<class ContainerAllocator>
struct DataType< ::light_robot::complx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "light_robot/complx";
  }

  static const char* value(const ::light_robot::complx_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::light_robot::complx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 real\n"
"int32 imaginary\n"
;
  }

  static const char* value(const ::light_robot::complx_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::light_robot::complx_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.real);
      stream.next(m.imaginary);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct complx_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::light_robot::complx_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::light_robot::complx_<ContainerAllocator>& v)
  {
    s << indent << "real: ";
    Printer<int32_t>::stream(s, indent + "  ", v.real);
    s << indent << "imaginary: ";
    Printer<int32_t>::stream(s, indent + "  ", v.imaginary);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIGHT_ROBOT_MESSAGE_COMPLX_H
