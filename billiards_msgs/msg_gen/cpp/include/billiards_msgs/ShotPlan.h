/* Auto-generated by genmsg_cpp for file /home/ashok/Projects/billiards/billiards_msgs/msg/ShotPlan.msg */
#ifndef BILLIARDS_MSGS_MESSAGE_SHOTPLAN_H
#define BILLIARDS_MSGS_MESSAGE_SHOTPLAN_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "billiards_msgs/BallState.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/PoseStamped.h"

namespace billiards_msgs
{
template <class ContainerAllocator>
struct ShotPlan_ {
  typedef ShotPlan_<ContainerAllocator> Type;

  ShotPlan_()
  : ball()
  , base_pose()
  , bridge_pose()
  , velocity(0.0)
  {
  }

  ShotPlan_(const ContainerAllocator& _alloc)
  : ball(_alloc)
  , base_pose(_alloc)
  , bridge_pose(_alloc)
  , velocity(0.0)
  {
  }

  typedef  ::billiards_msgs::BallState_<ContainerAllocator>  _ball_type;
   ::billiards_msgs::BallState_<ContainerAllocator>  ball;

  typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _base_pose_type;
   ::geometry_msgs::PoseStamped_<ContainerAllocator>  base_pose;

  typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _bridge_pose_type;
   ::geometry_msgs::PoseStamped_<ContainerAllocator>  bridge_pose;

  typedef double _velocity_type;
  double velocity;


  typedef boost::shared_ptr< ::billiards_msgs::ShotPlan_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::billiards_msgs::ShotPlan_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct ShotPlan
typedef  ::billiards_msgs::ShotPlan_<std::allocator<void> > ShotPlan;

typedef boost::shared_ptr< ::billiards_msgs::ShotPlan> ShotPlanPtr;
typedef boost::shared_ptr< ::billiards_msgs::ShotPlan const> ShotPlanConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::billiards_msgs::ShotPlan_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::billiards_msgs::ShotPlan_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace billiards_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::billiards_msgs::ShotPlan_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::billiards_msgs::ShotPlan_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::billiards_msgs::ShotPlan_<ContainerAllocator> > {
  static const char* value() 
  {
    return "2fae0f577b78b1457b53c10daefbd54e";
  }

  static const char* value(const  ::billiards_msgs::ShotPlan_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x2fae0f577b78b145ULL;
  static const uint64_t static_value2 = 0x7b53c10daefbd54eULL;
};

template<class ContainerAllocator>
struct DataType< ::billiards_msgs::ShotPlan_<ContainerAllocator> > {
  static const char* value() 
  {
    return "billiards_msgs/ShotPlan";
  }

  static const char* value(const  ::billiards_msgs::ShotPlan_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::billiards_msgs::ShotPlan_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# describes plan for a single shot\n\
BallState ball\n\
geometry_msgs/PoseStamped base_pose                     # where PR2 should \"stand\"\n\
geometry_msgs/PoseStamped bridge_pose                   # where to put the bridge\n\
                                                        # orientation is: x-forward (towards cue ball)\n\
                                                        #                 z-(up)\n\
                                                        #                 y-robot left\n\
float64                   velocity                      # not used for now\n\
\n\
\n\
================================================================================\n\
MSG: billiards_msgs/BallState\n\
int8                  id                  # id of the ball\n\
                                          # 0-cue ball, 1-15 for each of the 15 balls\n\
bool                  pocketed            # false if ball is on the table\n\
geometry_msgs/PointStamped   point        # location of each ball\n\
int8                  group_id            # if we want to group the ball\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PointStamped\n\
# This represents a Point with reference coordinate frame and timestamp\n\
Header header\n\
Point point\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
";
  }

  static const char* value(const  ::billiards_msgs::ShotPlan_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::billiards_msgs::ShotPlan_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.ball);
    stream.next(m.base_pose);
    stream.next(m.bridge_pose);
    stream.next(m.velocity);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ShotPlan_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::billiards_msgs::ShotPlan_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::billiards_msgs::ShotPlan_<ContainerAllocator> & v) 
  {
    s << indent << "ball: ";
s << std::endl;
    Printer< ::billiards_msgs::BallState_<ContainerAllocator> >::stream(s, indent + "  ", v.ball);
    s << indent << "base_pose: ";
s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.base_pose);
    s << indent << "bridge_pose: ";
s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.bridge_pose);
    s << indent << "velocity: ";
    Printer<double>::stream(s, indent + "  ", v.velocity);
  }
};


} // namespace message_operations
} // namespace ros

#endif // BILLIARDS_MSGS_MESSAGE_SHOTPLAN_H

