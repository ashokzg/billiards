; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude ShotPlan.msg.html

(cl:defclass <ShotPlan> (roslisp-msg-protocol:ros-message)
  ((ball
    :reader ball
    :initarg :ball
    :type billiards_msgs-msg:BallState
    :initform (cl:make-instance 'billiards_msgs-msg:BallState))
   (base_pose
    :reader base_pose
    :initarg :base_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (bridge_pose
    :reader bridge_pose
    :initarg :bridge_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass ShotPlan (<ShotPlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShotPlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShotPlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<ShotPlan> is deprecated: use billiards_msgs-msg:ShotPlan instead.")))

(cl:ensure-generic-function 'ball-val :lambda-list '(m))
(cl:defmethod ball-val ((m <ShotPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:ball-val is deprecated.  Use billiards_msgs-msg:ball instead.")
  (ball m))

(cl:ensure-generic-function 'base_pose-val :lambda-list '(m))
(cl:defmethod base_pose-val ((m <ShotPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:base_pose-val is deprecated.  Use billiards_msgs-msg:base_pose instead.")
  (base_pose m))

(cl:ensure-generic-function 'bridge_pose-val :lambda-list '(m))
(cl:defmethod bridge_pose-val ((m <ShotPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:bridge_pose-val is deprecated.  Use billiards_msgs-msg:bridge_pose instead.")
  (bridge_pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ShotPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:velocity-val is deprecated.  Use billiards_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShotPlan>) ostream)
  "Serializes a message object of type '<ShotPlan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bridge_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShotPlan>) istream)
  "Deserializes a message object of type '<ShotPlan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bridge_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShotPlan>)))
  "Returns string type for a message object of type '<ShotPlan>"
  "billiards_msgs/ShotPlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShotPlan)))
  "Returns string type for a message object of type 'ShotPlan"
  "billiards_msgs/ShotPlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShotPlan>)))
  "Returns md5sum for a message object of type '<ShotPlan>"
  "2fae0f577b78b1457b53c10daefbd54e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShotPlan)))
  "Returns md5sum for a message object of type 'ShotPlan"
  "2fae0f577b78b1457b53c10daefbd54e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShotPlan>)))
  "Returns full string definition for message of type '<ShotPlan>"
  (cl:format cl:nil "# describes plan for a single shot~%BallState ball~%geometry_msgs/PoseStamped base_pose                     # where PR2 should \"stand\"~%geometry_msgs/PoseStamped bridge_pose                   # where to put the bridge~%                                                        # orientation is: x-forward (towards cue ball)~%                                                        #                 z-(up)~%                                                        #                 y-robot left~%float64                   velocity                      # not used for now~%~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShotPlan)))
  "Returns full string definition for message of type 'ShotPlan"
  (cl:format cl:nil "# describes plan for a single shot~%BallState ball~%geometry_msgs/PoseStamped base_pose                     # where PR2 should \"stand\"~%geometry_msgs/PoseStamped bridge_pose                   # where to put the bridge~%                                                        # orientation is: x-forward (towards cue ball)~%                                                        #                 z-(up)~%                                                        #                 y-robot left~%float64                   velocity                      # not used for now~%~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShotPlan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bridge_pose))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShotPlan>))
  "Converts a ROS message object to a list"
  (cl:list 'ShotPlan
    (cl:cons ':ball (ball msg))
    (cl:cons ':base_pose (base_pose msg))
    (cl:cons ':bridge_pose (bridge_pose msg))
    (cl:cons ':velocity (velocity msg))
))
