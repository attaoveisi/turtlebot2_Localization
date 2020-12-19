// Generated by gencpp from file stdr_msgs/LoadExternalMapRequest.msg
// DO NOT EDIT!


#ifndef STDR_MSGS_MESSAGE_LOADEXTERNALMAPREQUEST_H
#define STDR_MSGS_MESSAGE_LOADEXTERNALMAPREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/OccupancyGrid.h>

namespace stdr_msgs
{
template <class ContainerAllocator>
struct LoadExternalMapRequest_
{
  typedef LoadExternalMapRequest_<ContainerAllocator> Type;

  LoadExternalMapRequest_()
    : map()  {
    }
  LoadExternalMapRequest_(const ContainerAllocator& _alloc)
    : map(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::OccupancyGrid_<ContainerAllocator>  _map_type;
  _map_type map;





  typedef boost::shared_ptr< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LoadExternalMapRequest_

typedef ::stdr_msgs::LoadExternalMapRequest_<std::allocator<void> > LoadExternalMapRequest;

typedef boost::shared_ptr< ::stdr_msgs::LoadExternalMapRequest > LoadExternalMapRequestPtr;
typedef boost::shared_ptr< ::stdr_msgs::LoadExternalMapRequest const> LoadExternalMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator1> & lhs, const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map == rhs.map;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator1> & lhs, const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace stdr_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6cdd0a18e0aff5b0a3ca2326a89b54ff";
  }

  static const char* value(const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6cdd0a18e0aff5b0ULL;
  static const uint64_t static_value2 = 0xa3ca2326a89b54ffULL;
};

template<class ContainerAllocator>
struct DataType< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "stdr_msgs/LoadExternalMapRequest";
  }

  static const char* value(const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nav_msgs/OccupancyGrid  map\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/OccupancyGrid\n"
"# This represents a 2-D grid map, in which each cell represents the probability of\n"
"# occupancy.\n"
"\n"
"Header header \n"
"\n"
"#MetaData for the map\n"
"MapMetaData info\n"
"\n"
"# The map data, in row-major order, starting with (0,0).  Occupancy\n"
"# probabilities are in the range [0,100].  Unknown is -1.\n"
"int8[] data\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: nav_msgs/MapMetaData\n"
"# This hold basic information about the characterists of the OccupancyGrid\n"
"\n"
"# The time at which the map was loaded\n"
"time map_load_time\n"
"# The map resolution [m/cell]\n"
"float32 resolution\n"
"# Map width [cells]\n"
"uint32 width\n"
"# Map height [cells]\n"
"uint32 height\n"
"# The origin of the map [m, m, rad].  This is the real-world pose of the\n"
"# cell (0,0) in the map.\n"
"geometry_msgs/Pose origin\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LoadExternalMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::stdr_msgs::LoadExternalMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "map: ";
    s << std::endl;
    Printer< ::nav_msgs::OccupancyGrid_<ContainerAllocator> >::stream(s, indent + "  ", v.map);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STDR_MSGS_MESSAGE_LOADEXTERNALMAPREQUEST_H
