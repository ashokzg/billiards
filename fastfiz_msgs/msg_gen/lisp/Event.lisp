; Auto-generated. Do not edit!


(cl:in-package fastfiz_msgs-msg)


;//! \htmlinclude Event.msg.html

(cl:defclass <Event> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (ball1
    :reader ball1
    :initarg :ball1
    :type billiards_msgs-msg:BallState
    :initform (cl:make-instance 'billiards_msgs-msg:BallState))
   (ball2
    :reader ball2
    :initarg :ball2
    :type billiards_msgs-msg:BallState
    :initform (cl:make-instance 'billiards_msgs-msg:BallState))
   (string_rep
    :reader string_rep
    :initarg :string_rep
    :type cl:string
    :initform ""))
)

(cl:defclass Event (<Event>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Event>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Event)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fastfiz_msgs-msg:<Event> is deprecated: use fastfiz_msgs-msg:Event instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastfiz_msgs-msg:type-val is deprecated.  Use fastfiz_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'ball1-val :lambda-list '(m))
(cl:defmethod ball1-val ((m <Event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastfiz_msgs-msg:ball1-val is deprecated.  Use fastfiz_msgs-msg:ball1 instead.")
  (ball1 m))

(cl:ensure-generic-function 'ball2-val :lambda-list '(m))
(cl:defmethod ball2-val ((m <Event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastfiz_msgs-msg:ball2-val is deprecated.  Use fastfiz_msgs-msg:ball2 instead.")
  (ball2 m))

(cl:ensure-generic-function 'string_rep-val :lambda-list '(m))
(cl:defmethod string_rep-val ((m <Event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastfiz_msgs-msg:string_rep-val is deprecated.  Use fastfiz_msgs-msg:string_rep instead.")
  (string_rep m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Event>)))
    "Constants for message type '<Event>"
  '((:NO_EVENT . 0)
    (:STATE_CHANGE . 1)
    (:BALL_COLLISION . 2)
    (:RAIL_COLLISION . 3)
    (:POCKETED . 4)
    (:CUE_STRIKE . 5)
    (:MISCUE . 6)
    (:UNKNOWN_EVENT . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Event)))
    "Constants for message type 'Event"
  '((:NO_EVENT . 0)
    (:STATE_CHANGE . 1)
    (:BALL_COLLISION . 2)
    (:RAIL_COLLISION . 3)
    (:POCKETED . 4)
    (:CUE_STRIKE . 5)
    (:MISCUE . 6)
    (:UNKNOWN_EVENT . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Event>) ostream)
  "Serializes a message object of type '<Event>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ball2) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'string_rep))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'string_rep))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Event>) istream)
  "Deserializes a message object of type '<Event>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ball2) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'string_rep) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'string_rep) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Event>)))
  "Returns string type for a message object of type '<Event>"
  "fastfiz_msgs/Event")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Event)))
  "Returns string type for a message object of type 'Event"
  "fastfiz_msgs/Event")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Event>)))
  "Returns md5sum for a message object of type '<Event>"
  "dc315df2bb491329dab45557e8a0ed50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Event)))
  "Returns md5sum for a message object of type 'Event"
  "dc315df2bb491329dab45557e8a0ed50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Event>)))
  "Returns full string definition for message of type '<Event>"
  (cl:format cl:nil "uint8 NO_EVENT = 0~%uint8 STATE_CHANGE = 1~%uint8 BALL_COLLISION = 2~%uint8 RAIL_COLLISION = 3~%uint8 POCKETED = 4~%uint8 CUE_STRIKE = 5~%uint8 MISCUE = 6~%uint8 UNKNOWN_EVENT = 7~%~%uint8 type~%~%billiards_msgs/BallState ball1~%billiards_msgs/BallState ball2~%~%string string_rep~%~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Event)))
  "Returns full string definition for message of type 'Event"
  (cl:format cl:nil "uint8 NO_EVENT = 0~%uint8 STATE_CHANGE = 1~%uint8 BALL_COLLISION = 2~%uint8 RAIL_COLLISION = 3~%uint8 POCKETED = 4~%uint8 CUE_STRIKE = 5~%uint8 MISCUE = 6~%uint8 UNKNOWN_EVENT = 7~%~%uint8 type~%~%billiards_msgs/BallState ball1~%billiards_msgs/BallState ball2~%~%string string_rep~%~%~%================================================================================~%MSG: billiards_msgs/BallState~%int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Event>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ball2))
     4 (cl:length (cl:slot-value msg 'string_rep))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Event>))
  "Converts a ROS message object to a list"
  (cl:list 'Event
    (cl:cons ':type (type msg))
    (cl:cons ':ball1 (ball1 msg))
    (cl:cons ':ball2 (ball2 msg))
    (cl:cons ':string_rep (string_rep msg))
))
