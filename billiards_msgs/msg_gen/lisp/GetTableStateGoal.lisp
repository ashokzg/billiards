; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude GetTableStateGoal.msg.html

(cl:defclass <GetTableStateGoal> (roslisp-msg-protocol:ros-message)
  ((table_frame_id
    :reader table_frame_id
    :initarg :table_frame_id
    :type cl:string
    :initform "")
   (filter_against_table
    :reader filter_against_table
    :initarg :filter_against_table
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetTableStateGoal (<GetTableStateGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTableStateGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTableStateGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<GetTableStateGoal> is deprecated: use billiards_msgs-msg:GetTableStateGoal instead.")))

(cl:ensure-generic-function 'table_frame_id-val :lambda-list '(m))
(cl:defmethod table_frame_id-val ((m <GetTableStateGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:table_frame_id-val is deprecated.  Use billiards_msgs-msg:table_frame_id instead.")
  (table_frame_id m))

(cl:ensure-generic-function 'filter_against_table-val :lambda-list '(m))
(cl:defmethod filter_against_table-val ((m <GetTableStateGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader billiards_msgs-msg:filter_against_table-val is deprecated.  Use billiards_msgs-msg:filter_against_table instead.")
  (filter_against_table m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTableStateGoal>) ostream)
  "Serializes a message object of type '<GetTableStateGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'table_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'table_frame_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'filter_against_table) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTableStateGoal>) istream)
  "Deserializes a message object of type '<GetTableStateGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'table_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'table_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'filter_against_table) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTableStateGoal>)))
  "Returns string type for a message object of type '<GetTableStateGoal>"
  "billiards_msgs/GetTableStateGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTableStateGoal)))
  "Returns string type for a message object of type 'GetTableStateGoal"
  "billiards_msgs/GetTableStateGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTableStateGoal>)))
  "Returns md5sum for a message object of type '<GetTableStateGoal>"
  "c34b2a0d2205320aa64b3beab9e96002")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTableStateGoal)))
  "Returns md5sum for a message object of type 'GetTableStateGoal"
  "c34b2a0d2205320aa64b3beab9e96002")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTableStateGoal>)))
  "Returns full string definition for message of type '<GetTableStateGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string table_frame_id~%bool filter_against_table~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTableStateGoal)))
  "Returns full string definition for message of type 'GetTableStateGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string table_frame_id~%bool filter_against_table~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTableStateGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'table_frame_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTableStateGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTableStateGoal
    (cl:cons ':table_frame_id (table_frame_id msg))
    (cl:cons ':filter_against_table (filter_against_table msg))
))
