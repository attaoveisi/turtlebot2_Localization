// Generated by gencpp from file stdr_msgs/DeleteCO2SourceRequest.msg
// DO NOT EDIT!


#ifndef STDR_MSGS_MESSAGE_DELETECO2SOURCEREQUEST_H
#define STDR_MSGS_MESSAGE_DELETECO2SOURCEREQUEST_H


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
struct DeleteCO2SourceRequest_
{
  typedef DeleteCO2SourceRequest_<ContainerAllocator> Type;

  DeleteCO2SourceRequest_()
    : name()  {
    }
  DeleteCO2SourceRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DeleteCO2SourceRequest_

typedef ::stdr_msgs::DeleteCO2SourceRequest_<std::allocator<void> > DeleteCO2SourceRequest;

typedef boost::shared_ptr< ::stdr_msgs::DeleteCO2SourceRequest > DeleteCO2SourceRequestPtr;
typedef boost::shared_ptr< ::stdr_msgs::DeleteCO2SourceRequest const> DeleteCO2SourceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator1> & lhs, const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator1> & lhs, const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace stdr_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stdr_msgs/DeleteCO2SourceRequest";
  }

  static const char* value(const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
;
  }

  static const char* value(const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeleteCO2SourceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stdr_msgs::DeleteCO2SourceRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STDR_MSGS_MESSAGE_DELETECO2SOURCEREQUEST_H
