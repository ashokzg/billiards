; Auto-generated. Do not edit!


(cl:in-package fastfiz_msgs-srv)


;//! \htmlinclude SimulateShot-request.msg.html

(cl:defclass <SimulateShot-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type billiards_msgs-msg:TableState
    :initform (cl:make-instance 'billiards_msgs-msg:TableState))
   (shot
    :reader shot
    :initarg :shot
    :type fastfiz_msgs-msg:ShotParams
    :initform (cl:make-instance 'fastfiz_msgs-msg:ShotParams)))
)

(cl:defclass SimulateShot-request (<SimulateShot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimulateShot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimulateShot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fastfiz_msgs-srv:<SimulateShot-request> is deprecated: use fastfiz_msgs-srv:SimulateShot-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SimulateShot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastfiz_msgs-srv:state-val is deprecated.  Use fastfiz_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'shot-val :lambda-list '(m))
(cl:defmethod shot-val ((m <SimulateShot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastfiz_msgs-srv:shot-val is deprecated.  Use fastfiz_msgs-srv:shot instead.")
  (shot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimulateShot-request>) ostream)
  "Serializes a message object of type '<SimulateShot-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shot) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimulateShot-request>) istream)
  "Deserializes a message object of type '<SimulateShot-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shot) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimulateShot-request>)))
  "Returns string type for a service object of type '<SimulateShot-request>"
  "fastfiz_msgs/SimulateShotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimulateShot-request)))
  "Returns string type for a service object of type 'SimulateShot-request"
  "fastfiz_msgs/SimulateShotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimulateShot-request>)))
  "Returns md5sum for a message object of type '<SimulateShot-request>"
  "fa1efda9acdc73b5f88a0d0985d85697")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimulateShot-request)))
  "Returns md5sum for a message object of type 'SimulateShot-request"
  "fa1efda9acdc73b5f88a0d0985d85697")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimulateShot-request>)))
  "Returns full string definition for message of type '<SimulateShot-request>"
  (cl:format cl:nil "billiards_msgs/TableState state~%ShotParams shot~%~%================================================================================~%MSG: billiards_msgs/TableState~%BallState[] balls~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: fastfiz_msgs/ShotParams~%float64 a     # The x-coordinate of the cue stick (right/left english) on the CUE ball in mm. ~%float64 b     # The y-coordinate of the cue stick (top/bottom english) on the CUE ball in mm. ~%float64 theta # The elevation of the cue stick in degrees. ~%float64 phi   # The azumith angle (heading) of the cue stick in degrees. ~%float64 v     # The velocity of the cue stick before impact in m/s (max is 4.5 m/s). ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimulateShot-request)))
  "Returns full string definition for message of type 'SimulateShot-request"
  (cl:format cl:nil "billiards_msgs/TableState state~%ShotParams shot~%~%================================================================================~%MSG: billiards_msgs/TableState~%BallState[] balls~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: fastfiz_msgs/ShotParams~%float64 a     # The x-coordinate of the cue stick (right/left english) on the CUE ball in mm. ~%float64 b     # The y-coordinate of the cue stick (top/bottom english) on the CUE ball in mm. ~%float64 theta # The elevation of the cue stick in degrees. ~%float64 phi   # The azumith angle (heading) of the cue stick in degrees. ~%float64 v     # The velocity of the cue stick before impact in m/s (max is 4.5 m/s). ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimulateShot-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shot))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimulateShot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SimulateShot-request
    (cl:cons ':state (state msg))
    (cl:cons ':shot (shot msg))
))
;//! \htmlinclude SimulateShot-response.msg.html

(cl:defclass <SimulateShot-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type billiards_msgs-msg:TableState
    :initform (cl:make-instance 'billiards_msgs-msg:TableState))
   (events
    :reader events
    :initarg :events
    :type (cl:vector fastfiz_msgs-msg:Event)
   :initform (cl:make-array 0 :element-type 'fastfiz_msgs-msg:Event :initial-element (cl:make-instance 'fastfiz_msgs-msg:Event))))
)

(cl:defclass SimulateShot-response (<SimulateShot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimulateShot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimulateShot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fastfiz_msgs-srv:<SimulateShot-response> is deprecated: use fastfiz_msgs-srv:SimulateShot-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SimulateShot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastfiz_msgs-srv:state-val is deprecated.  Use fastfiz_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'events-val :lambda-list '(m))
(cl:defmethod events-val ((m <SimulateShot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastfiz_msgs-srv:events-val is deprecated.  Use fastfiz_msgs-srv:events instead.")
  (events m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimulateShot-response>) ostream)
  "Serializes a message object of type '<SimulateShot-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'events))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'events))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimulateShot-response>) istream)
  "Deserializes a message object of type '<SimulateShot-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'events) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'events)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fastfiz_msgs-msg:Event))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimulateShot-response>)))
  "Returns string type for a service object of type '<SimulateShot-response>"
  "fastfiz_msgs/SimulateShotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimulateShot-response)))
  "Returns string type for a service object of type 'SimulateShot-response"
  "fastfiz_msgs/SimulateShotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimulateShot-response>)))
  "Returns md5sum for a message object of type '<SimulateShot-response>"
  "fa1efda9acdc73b5f88a0d0985d85697")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimulateShot-response)))
  "Returns md5sum for a message object of type 'SimulateShot-response"
  "fa1efda9acdc73b5f88a0d0985d85697")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimulateShot-response>)))
  "Returns full string definition for message of type '<SimulateShot-response>"
  (cl:format cl:nil "billiards_msgs/TableState state~%Event[] events~%~%================================================================================~%MSG: billiards_msgs/TableState~%BallState[] balls~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: fastfiz_msgs/Event~%uint8 NO_EVENT = 0~%uint8 STATE_CHANGE = 1~%uint8 BALL_COLLISION = 2~%uint8 RAIL_COLLISION = 3~%uint8 POCKETED = 4~%uint8 CUE_STRIKE = 5~%uint8 MISCUE = 6~%uint8 UNKNOWN_EVENT = 7~%~%uint8 type~%~%billiards_msgs/BallState ball1~%billiards_msgs/BallState ball2~%~%string string_rep~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimulateShot-response)))
  "Returns full string definition for message of type 'SimulateShot-response"
  (cl:format cl:nil "billiards_msgs/TableState state~%Event[] events~%~%================================================================================~%MSG: billiards_msgs/TableState~%BallState[] balls~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: fastfiz_msgs/Event~%uint8 NO_EVENT = 0~%uint8 STATE_CHANGE = 1~%uint8 BALL_COLLISION = 2~%uint8 RAIL_COLLISION = 3~%uint8 POCKETED = 4~%uint8 CUE_STRIKE = 5~%uint8 MISCUE = 6~%uint8 UNKNOWN_EVENT = 7~%~%uint8 type~%~%billiards_msgs/BallState ball1~%billiards_msgs/BallState ball2~%~%string string_rep~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimulateShot-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'events) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimulateShot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SimulateShot-response
    (cl:cons ':state (state msg))
    (cl:cons ':events (events msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SimulateShot)))
  'SimulateShot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SimulateShot)))
  'SimulateShot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimulateShot)))
  "Returns string type for a service object of type '<SimulateShot>"
  "fastfiz_msgs/SimulateShot")