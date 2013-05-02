; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude TableState.msg.html

(cl:defclass <TableState> (roslisp-msg-protocol:ros-message)
  ((balls
    :reader balls
    :initarg :balls
    :type (cl:vector billiards_msgs-msg:BallState)
   :initform (cl:make-array 0 :element-type 'billiards_msgs-msg:BallState :initial-element (cl:make-instance 'billiards_msgs-msg:BallState))))
)

(cl:defclass TableState (<TableState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TableState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TableState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<TableState> is deprecated: use billiards_msgs-msg:TableState instead.")))

(cl:ensure-generic-function 'balls-val :lambda-list '(m))
(cl:defmethod balls-val ((m <TableState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:balls-val is deprecated.  Use billiards_msgs-msg:balls instead.")
  (balls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TableState>) ostream)
  "Serializes a message object of type '<TableState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'balls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'balls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TableState>) istream)
  "Deserializes a message object of type '<TableState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'balls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'balls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'billiards_msgs-msg:BallState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TableState>)))
  "Returns string type for a message object of type '<TableState>"
  "billiards_msgs/TableState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TableState)))
  "Returns string type for a message object of type 'TableState"
  "billiards_msgs/TableState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TableState>)))
  "Returns md5sum for a message object of type '<TableState>"
  "495f61486cf3780b332ac6537332d69a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TableState)))
  "Returns md5sum for a message object of type 'TableState"
  "495f61486cf3780b332ac6537332d69a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TableState>)))
  "Returns full string definition for message of type '<TableState>"
  (cl:format cl:nil "BallState[] balls~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TableState)))
  "Returns full string definition for message of type 'TableState"
  (cl:format cl:nil "BallState[] balls~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TableState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'balls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TableState>))
  "Converts a ROS message object to a list"
  (cl:list 'TableState
    (cl:cons ':balls (balls msg))
))
