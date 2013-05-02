; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude BallState.msg.html

(cl:defclass <BallState> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (pocketed
    :reader pocketed
    :initarg :pocketed
    :type cl:boolean
    :initform cl:nil)
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped))
   (group_id
    :reader group_id
    :initarg :group_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BallState (<BallState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BallState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BallState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<BallState> is deprecated: use billiards_msgs-msg:BallState instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <BallState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:id-val is deprecated.  Use billiards_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pocketed-val :lambda-list '(m))
(cl:defmethod pocketed-val ((m <BallState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:pocketed-val is deprecated.  Use billiards_msgs-msg:pocketed instead.")
  (pocketed m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <BallState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:point-val is deprecated.  Use billiards_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'group_id-val :lambda-list '(m))
(cl:defmethod group_id-val ((m <BallState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:group_id-val is deprecated.  Use billiards_msgs-msg:group_id instead.")
  (group_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BallState>) ostream)
  "Serializes a message object of type '<BallState>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pocketed) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let* ((signed (cl:slot-value msg 'group_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BallState>) istream)
  "Deserializes a message object of type '<BallState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'pocketed) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BallState>)))
  "Returns string type for a message object of type '<BallState>"
  "billiards_msgs/BallState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BallState)))
  "Returns string type for a message object of type 'BallState"
  "billiards_msgs/BallState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BallState>)))
  "Returns md5sum for a message object of type '<BallState>"
  "6ea21e2ed6a05165e2c5d45298536113")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BallState)))
  "Returns md5sum for a message object of type 'BallState"
  "6ea21e2ed6a05165e2c5d45298536113")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BallState>)))
  "Returns full string definition for message of type '<BallState>"
  (cl:format cl:nil "int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BallState)))
  "Returns full string definition for message of type 'BallState"
  (cl:format cl:nil "int8                  id                  # id of the ball~%                                          # 0-cue ball, 1-15 for each of the 15 balls~%bool                  pocketed            # false if ball is on the table~%geometry_msgs/PointStamped   point        # location of each ball~%int8                  group_id            # if we want to group the ball~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BallState>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BallState>))
  "Converts a ROS message object to a list"
  (cl:list 'BallState
    (cl:cons ':id (id msg))
    (cl:cons ':pocketed (pocketed msg))
    (cl:cons ':point (point msg))
    (cl:cons ':group_id (group_id msg))
))
