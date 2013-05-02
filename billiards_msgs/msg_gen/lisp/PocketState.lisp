; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude PocketState.msg.html

(cl:defclass <PocketState> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass PocketState (<PocketState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PocketState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PocketState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<PocketState> is deprecated: use billiards_msgs-msg:PocketState instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <PocketState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:id-val is deprecated.  Use billiards_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <PocketState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:point-val is deprecated.  Use billiards_msgs-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PocketState>) ostream)
  "Serializes a message object of type '<PocketState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PocketState>) istream)
  "Deserializes a message object of type '<PocketState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PocketState>)))
  "Returns string type for a message object of type '<PocketState>"
  "billiards_msgs/PocketState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PocketState)))
  "Returns string type for a message object of type 'PocketState"
  "billiards_msgs/PocketState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PocketState>)))
  "Returns md5sum for a message object of type '<PocketState>"
  "b23912eba03767ebfc2e9b41ef37053d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PocketState)))
  "Returns md5sum for a message object of type 'PocketState"
  "b23912eba03767ebfc2e9b41ef37053d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PocketState>)))
  "Returns full string definition for message of type '<PocketState>"
  (cl:format cl:nil "uint8                 id              # pocket id, see wiki for picture~%geometry_msgs/PointStamped   point    # point of the pocket to aim for,~%                                      # target ball trajectory should~%                                      # cross this point if shot is successful~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PocketState)))
  "Returns full string definition for message of type 'PocketState"
  (cl:format cl:nil "uint8                 id              # pocket id, see wiki for picture~%geometry_msgs/PointStamped   point    # point of the pocket to aim for,~%                                      # target ball trajectory should~%                                      # cross this point if shot is successful~%~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PocketState>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PocketState>))
  "Converts a ROS message object to a list"
  (cl:list 'PocketState
    (cl:cons ':id (id msg))
    (cl:cons ':point (point msg))
))
