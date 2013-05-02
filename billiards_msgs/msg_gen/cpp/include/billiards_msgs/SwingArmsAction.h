/* Auto-generated by genmsg_cpp for file /home/ashok/Projects/billiards/billiards_msgs/msg/SwingArmsAction.msg */
#ifndef BILLIARDS_MSGS_MESSAGE_SWINGARMSACTION_H
#define BILLIARDS_MSGS_MESSAGE_SWINGARMSACTION_H
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

#include "billiards_msgs/SwingArmsActionGoal.h"
#include "billiards_msgs/SwingArmsActionResult.h"
#include "billiards_msgs/SwingArmsActionFeedback.h"

namespace billiards_msgs
{
template <class ContainerAllocator>
struct SwingArmsAction_ {
  typedef SwingArmsAction_<ContainerAllocator> Type;

  SwingArmsAction_()
  : action_goal()
  , action_result()
  , action_feedback()
  {
  }

  SwingArmsAction_(const ContainerAllocator& _alloc)
  : action_goal(_alloc)
  , action_result(_alloc)
  , action_feedback(_alloc)
  {
  }

  typedef  ::billiards_msgs::SwingArmsActionGoal_<ContainerAllocator>  _action_goal_type;
   ::billiards_msgs::SwingArmsActionGoal_<ContainerAllocator>  action_goal;

  typedef  ::billiards_msgs::SwingArmsActionResult_<ContainerAllocator>  _action_result_type;
   ::billiards_msgs::SwingArmsActionResult_<ContainerAllocator>  action_result;

  typedef  ::billiards_msgs::SwingArmsActionFeedback_<ContainerAllocator>  _action_feedback_type;
   ::billiards_msgs::SwingArmsActionFeedback_<ContainerAllocator>  action_feedback;


  typedef boost::shared_ptr< ::billiards_msgs::SwingArmsAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::billiards_msgs::SwingArmsAction_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct SwingArmsAction
typedef  ::billiards_msgs::SwingArmsAction_<std::allocator<void> > SwingArmsAction;

typedef boost::shared_ptr< ::billiards_msgs::SwingArmsAction> SwingArmsActionPtr;
typedef boost::shared_ptr< ::billiards_msgs::SwingArmsAction const> SwingArmsActionConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::billiards_msgs::SwingArmsAction_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::billiards_msgs::SwingArmsAction_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace billiards_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::billiards_msgs::SwingArmsAction_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::billiards_msgs::SwingArmsAction_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::billiards_msgs::SwingArmsAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "99444920763683a384cd94942edcab53";
  }

  static const char* value(const  ::billiards_msgs::SwingArmsAction_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x99444920763683a3ULL;
  static const uint64_t static_value2 = 0x84cd94942edcab53ULL;
};

template<class ContainerAllocator>
struct DataType< ::billiards_msgs::SwingArmsAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "billiards_msgs/SwingArmsAction";
  }

  static const char* value(const  ::billiards_msgs::SwingArmsAction_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::billiards_msgs::SwingArmsAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
SwingArmsActionGoal action_goal\n\
SwingArmsActionResult action_result\n\
SwingArmsActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: billiards_msgs/SwingArmsActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
SwingArmsGoal goal\n\
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
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: billiards_msgs/SwingArmsGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
bool away\n\
duration initial_wait\n\
\n\
================================================================================\n\
MSG: billiards_msgs/SwingArmsActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
SwingArmsResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: billiards_msgs/SwingArmsResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
================================================================================\n\
MSG: billiards_msgs/SwingArmsActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
SwingArmsFeedback feedback\n\
\n\
================================================================================\n\
MSG: billiards_msgs/SwingArmsFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
\n\
";
  }

  static const char* value(const  ::billiards_msgs::SwingArmsAction_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::billiards_msgs::SwingArmsAction_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.action_goal);
    stream.next(m.action_result);
    stream.next(m.action_feedback);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct SwingArmsAction_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::billiards_msgs::SwingArmsAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::billiards_msgs::SwingArmsAction_<ContainerAllocator> & v) 
  {
    s << indent << "action_goal: ";
s << std::endl;
    Printer< ::billiards_msgs::SwingArmsActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
s << std::endl;
    Printer< ::billiards_msgs::SwingArmsActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
s << std::endl;
    Printer< ::billiards_msgs::SwingArmsActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};


} // namespace message_operations
} // namespace ros

#endif // BILLIARDS_MSGS_MESSAGE_SWINGARMSACTION_H
