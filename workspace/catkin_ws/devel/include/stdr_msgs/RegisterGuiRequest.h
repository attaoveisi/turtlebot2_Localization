// Generated by gencpp from file stdr_msgs/RegisterGuiRequest.msg
// DO NOT EDIT!


#ifndef STDR_MSGS_MESSAGE_REGISTERGUIREQUEST_H
#define STDR_MSGS_MESSAGE_REGISTERGUIREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace stdr_msgs
{
template <class ContainerAllocator>
struct RegisterGuiRequest_
{
  typedef RegisterGuiRequest_<ContainerAllocator> Type;

  RegisterGuiRequest_()
    {
    }
  RegisterGuiRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RegisterGuiRequest_

typedef ::stdr_msgs::RegisterGuiRequest_<std::allocator<void> > RegisterGuiRequest;

typedef boost::shared_ptr< ::stdr_msgs::RegisterGuiRequest > RegisterGuiRequestPtr;
typedef boost::shared_ptr< ::stdr_msgs::RegisterGuiRequest const> RegisterGuiRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace stdr_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stdr_msgs/RegisterGuiRequest";
  }

  static const char* value(const ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RegisterGuiRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::stdr_msgs::RegisterGuiRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // STDR_MSGS_MESSAGE_REGISTERGUIREQUEST_H
