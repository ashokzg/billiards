; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude PoseStampedToTFResult.msg.html

(cl:defclass <PoseStampedToTFResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PoseStampedToTFResult (<PoseStampedToTFResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseStampedToTFResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseStampedToTFResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<PoseStampedToTFResult> is deprecated: use billiards_msgs-msg:PoseStampedToTFResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseStampedToTFResult>) ostream)
  "Serializes a message object of type '<PoseStampedToTFResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseStampedToTFResult>) istream)
  "Deserializes a message object of type '<PoseStampedToTFResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseStampedToTFResult>)))
  "Returns string type for a message object of type '<PoseStampedToTFResult>"
  "billiards_msgs/PoseStampedToTFResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseStampedToTFResult)))
  "Returns string type for a message object of type 'PoseStampedToTFResult"
  "billiards_msgs/PoseStampedToTFResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseStampedToTFResult>)))
  "Returns md5sum for a message object of type '<PoseStampedToTFResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseStampedToTFResult)))
  "Returns md5sum for a message object of type 'PoseStampedToTFResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseStampedToTFResult>)))
  "Returns full string definition for message of type '<PoseStampedToTFResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseStampedToTFResult)))
  "Returns full string definition for message of type 'PoseStampedToTFResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseStampedToTFResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseStampedToTFResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseStampedToTFResult
))