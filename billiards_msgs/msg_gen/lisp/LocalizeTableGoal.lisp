; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude LocalizeTableGoal.msg.html

(cl:defclass <LocalizeTableGoal> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type billiards_msgs-msg:TableState
    :initform (cl:make-instance 'billiards_msgs-msg:TableState)))
)

(cl:defclass LocalizeTableGoal (<LocalizeTableGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizeTableGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizeTableGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<LocalizeTableGoal> is deprecated: use billiards_msgs-msg:LocalizeTableGoal instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <LocalizeTableGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:state-val is deprecated.  Use billiards_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizeTableGoal>) ostream)
  "Serializes a message object of type '<LocalizeTableGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizeTableGoal>) istream)
  "Deserializes a message object of type '<LocalizeTableGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizeTableGoal>)))
  "Returns string type for a message object of type '<LocalizeTableGoal>"
  "billiards_msgs/LocalizeTableGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizeTableGoal)))
  "Returns string type for a message object of type 'LocalizeTableGoal"
  "billiards_msgs/LocalizeTableGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizeTableGoal>)))
  "Returns md5sum for a message object of type '<LocalizeTableGoal>"
  "70508e5dfcc8c4be58259ff6bdc4ab36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizeTableGoal)))
  "Returns md5sum for a message object of type 'LocalizeTableGoal"
  "70508e5dfcc8c4be58259ff6bdc4ab36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizeTableGoal>)))
  "Returns full string definition for message of type '<LocalizeTableGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%TableState state~%~%================================================================================~%MSG: billiards_msgs/TableState~%BallState[] balls~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizeTableGoal)))
  "Returns full string definition for message of type 'LocalizeTableGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%TableState state~%~%================================================================================~%MSG: billiards_msgs/TableState~%BallState[] balls~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizeTableGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizeTableGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizeTableGoal
    (cl:cons ':state (state msg))
))
