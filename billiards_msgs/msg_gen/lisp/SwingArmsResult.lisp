; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude SwingArmsResult.msg.html

(cl:defclass <SwingArmsResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SwingArmsResult (<SwingArmsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwingArmsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwingArmsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<SwingArmsResult> is deprecated: use billiards_msgs-msg:SwingArmsResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwingArmsResult>) ostream)
  "Serializes a message object of type '<SwingArmsResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwingArmsResult>) istream)
  "Deserializes a message object of type '<SwingArmsResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwingArmsResult>)))
  "Returns string type for a message object of type '<SwingArmsResult>"
  "billiards_msgs/SwingArmsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwingArmsResult)))
  "Returns string type for a message object of type 'SwingArmsResult"
  "billiards_msgs/SwingArmsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwingArmsResult>)))
  "Returns md5sum for a message object of type '<SwingArmsResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwingArmsResult)))
  "Returns md5sum for a message object of type 'SwingArmsResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwingArmsResult>)))
  "Returns full string definition for message of type '<SwingArmsResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwingArmsResult)))
  "Returns full string definition for message of type 'SwingArmsResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwingArmsResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwingArmsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SwingArmsResult
))