; Auto-generated. Do not edit!


(cl:in-package billiards_planner-srv)


;//! \htmlinclude PlanOneShot-request.msg.html

(cl:defclass <PlanOneShot-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PlanOneShot-request (<PlanOneShot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanOneShot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanOneShot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_planner-srv:<PlanOneShot-request> is deprecated: use billiards_planner-srv:PlanOneShot-request instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlanOneShot-request>)))
    "Constants for message type '<PlanOneShot-request>"
  '((:CUE_BALL_ID . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlanOneShot-request)))
    "Constants for message type 'PlanOneShot-request"
  '((:CUE_BALL_ID . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanOneShot-request>) ostream)
  "Serializes a message object of type '<PlanOneShot-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanOneShot-request>) istream)
  "Deserializes a message object of type '<PlanOneShot-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanOneShot-request>)))
  "Returns string type for a service object of type '<PlanOneShot-request>"
  "billiards_planner/PlanOneShotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanOneShot-request)))
  "Returns string type for a service object of type 'PlanOneShot-request"
  "billiards_planner/PlanOneShotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanOneShot-request>)))
  "Returns md5sum for a message object of type '<PlanOneShot-request>"
  "1738dae8d954291c88f7ba5441984a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanOneShot-request)))
  "Returns md5sum for a message object of type 'PlanOneShot-request"
  "1738dae8d954291c88f7ba5441984a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanOneShot-request>)))
  "Returns full string definition for message of type '<PlanOneShot-request>"
  (cl:format cl:nil "int8 cue_ball_id = 0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanOneShot-request)))
  "Returns full string definition for message of type 'PlanOneShot-request"
  (cl:format cl:nil "int8 cue_ball_id = 0~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanOneShot-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanOneShot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanOneShot-request
))
;//! \htmlinclude PlanOneShot-response.msg.html

(cl:defclass <PlanOneShot-response> (roslisp-msg-protocol:ros-message)
  ((shot_plans
    :reader shot_plans
    :initarg :shot_plans
    :type (cl:vector billiards_msgs-msg:ShotPlan)
   :initform (cl:make-array 0 :element-type 'billiards_msgs-msg:ShotPlan :initial-element (cl:make-instance 'billiards_msgs-msg:ShotPlan)))
   (target_balls
    :reader target_balls
    :initarg :target_balls
    :type (cl:vector billiards_msgs-msg:BallState)
   :initform (cl:make-array 0 :element-type 'billiards_msgs-msg:BallState :initial-element (cl:make-instance 'billiards_msgs-msg:BallState)))
   (target_pockets
    :reader target_pockets
    :initarg :target_pockets
    :type (cl:vector billiards_msgs-msg:PocketState)
   :initform (cl:make-array 0 :element-type 'billiards_msgs-msg:PocketState :initial-element (cl:make-instance 'billiards_msgs-msg:PocketState)))
   (scores
    :reader scores
    :initarg :scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PlanOneShot-response (<PlanOneShot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanOneShot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanOneShot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_planner-srv:<PlanOneShot-response> is deprecated: use billiards_planner-srv:PlanOneShot-response instead.")))

(cl:ensure-generic-function 'shot_plans-val :lambda-list '(m))
(cl:defmethod shot_plans-val ((m <PlanOneShot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_planner-srv:shot_plans-val is deprecated.  Use billiards_planner-srv:shot_plans instead.")
  (shot_plans m))

(cl:ensure-generic-function 'target_balls-val :lambda-list '(m))
(cl:defmethod target_balls-val ((m <PlanOneShot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_planner-srv:target_balls-val is deprecated.  Use billiards_planner-srv:target_balls instead.")
  (target_balls m))

(cl:ensure-generic-function 'target_pockets-val :lambda-list '(m))
(cl:defmethod target_pockets-val ((m <PlanOneShot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_planner-srv:target_pockets-val is deprecated.  Use billiards_planner-srv:target_pockets instead.")
  (target_pockets m))

(cl:ensure-generic-function 'scores-val :lambda-list '(m))
(cl:defmethod scores-val ((m <PlanOneShot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_planner-srv:scores-val is deprecated.  Use billiards_planner-srv:scores instead.")
  (scores m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanOneShot-response>) ostream)
  "Serializes a message object of type '<PlanOneShot-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shot_plans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shot_plans))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_balls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target_balls))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_pockets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target_pockets))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'scores))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanOneShot-response>) istream)
  "Deserializes a message object of type '<PlanOneShot-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shot_plans) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shot_plans)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'billiards_msgs-msg:ShotPlan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_balls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_balls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'billiards_msgs-msg:BallState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_pockets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_pockets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'billiards_msgs-msg:PocketState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanOneShot-response>)))
  "Returns string type for a service object of type '<PlanOneShot-response>"
  "billiards_planner/PlanOneShotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanOneShot-response)))
  "Returns string type for a service object of type 'PlanOneShot-response"
  "billiards_planner/PlanOneShotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanOneShot-response>)))
  "Returns md5sum for a message object of type '<PlanOneShot-response>"
  "1738dae8d954291c88f7ba5441984a1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanOneShot-response)))
  "Returns md5sum for a message object of type 'PlanOneShot-response"
  "1738dae8d954291c88f7ba5441984a1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanOneShot-response>)))
  "Returns full string definition for message of type '<PlanOneShot-response>"
  (cl:format cl:nil "billiards_msgs/ShotPlan[] shot_plans~%billiards_msgs/BallState[] target_balls~%billiards_msgs/PocketState[] target_pockets~%float64[] scores~%~%~%================================================================================~%MSG: billiards_msgs/ShotPlan~%# describes plan for a single shot~%BallState ball~%geometry_msgs/PoseStamped base_pose                     # where PR2 should \"stand\"~%geometry_msgs/PoseStamped bridge_pose                   # where to put the bridge~%                                                        # orientation is: x-forward (towards cue ball)~%                                                        #                 z-(up)~%                                                        #                 y-robot left~%float64                   velocity                      # not used for now~%~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: billiards_msgs/PocketState~%uint8                 id              # pocket id, see wiki for picture~%geometry_msgs/PointStamped   point    # point of the pocket to aim for,~%                                      # target ball trajectory should~%                                      # cross this point if shot is successful~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanOneShot-response)))
  "Returns full string definition for message of type 'PlanOneShot-response"
  (cl:format cl:nil "billiards_msgs/ShotPlan[] shot_plans~%billiards_msgs/BallState[] target_balls~%billiards_msgs/PocketState[] target_pockets~%float64[] scores~%~%~%================================================================================~%MSG: billiards_msgs/ShotPlan~%# describes plan for a single shot~%BallState ball~%geometry_msgs/PoseStamped base_pose                     # where PR2 should \"stand\"~%geometry_msgs/PoseStamped bridge_pose                   # where to put the bridge~%                                                        # orientation is: x-forward (towards cue ball)~%                                                        #                 z-(up)~%                                                        #                 y-robot left~%float64                   velocity                      # not used for now~%~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: billiards_msgs/PocketState~%uint8                 id              # pocket id, see wiki for picture~%geometry_msgs/PointStamped   point    # point of the pocket to aim for,~%                                      # target ball trajectory should~%                                      # cross this point if shot is successful~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanOneShot-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shot_plans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_balls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_pockets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanOneShot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanOneShot-response
    (cl:cons ':shot_plans (shot_plans msg))
    (cl:cons ':target_balls (target_balls msg))
    (cl:cons ':target_pockets (target_pockets msg))
    (cl:cons ':scores (scores msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanOneShot)))
  'PlanOneShot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanOneShot)))
  'PlanOneShot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanOneShot)))
  "Returns string type for a service object of type '<PlanOneShot>"
  "billiards_planner/PlanOneShot")