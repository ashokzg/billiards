; Auto-generated. Do not edit!


(cl:in-package billiards_msgs-msg)


;//! \htmlinclude Constants.msg.html

(cl:defclass <Constants> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Constants (<Constants>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Constants>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Constants)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name billiards_msgs-msg:<Constants> is deprecated: use billiards_msgs-msg:Constants instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Constants>)))
    "Constants for message type '<Constants>"
  '((:BALL_RADIUS . 0.028575)
    (:TABLE_LENGTH . 2.235)
    (:TABLE_WIDTH . 1.12)
    (:TABLE_HEIGHT . 0.78)
    (:RAIL_DEPTH . 0.14)
    (:RAIL_HEIGHT . 0.038)
    (:CORNER_POCKET_WIDTH . 0.125)
    (:SIDE_POCKET_WIDTH . 0.135)
    (:BUMPER_TO_DIAMOND . 0.085)
    (:BRIDGE_OFFSET_Z . 0.104)
    (:BRIDGE_HEIGHT . 0.112)
    (:BRIDGE_WIDTH . 0.052)
    (:BRIDGE_TO_STRIKE_MIN . 0.25)
    (:BRIDGE_TO_STRIKE_MAX . 0.33)
    (:BRIDGE_THICKNESS . 0.014)
    (:ROBOT_RADIUS . 0.4)
    (:BRIDGE_IN_BASE_X . 0.295)
    (:BRIDGE_IN_BASE_Y . 0.86)
    (:BRIDGE_IN_BASE_Z . 0.71)
    (:BRIDGE_IN_BASE_QX . 0.0)
    (:BRIDGE_IN_BASE_QY . 0.0)
    (:BRIDGE_IN_BASE_QZ . 0.766)
    (:BRIDGE_IN_BASE_QW . 0.643)
    (:CUE_AZIMUTH . 0.0524))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Constants)))
    "Constants for message type 'Constants"
  '((:BALL_RADIUS . 0.028575)
    (:TABLE_LENGTH . 2.235)
    (:TABLE_WIDTH . 1.12)
    (:TABLE_HEIGHT . 0.78)
    (:RAIL_DEPTH . 0.14)
    (:RAIL_HEIGHT . 0.038)
    (:CORNER_POCKET_WIDTH . 0.125)
    (:SIDE_POCKET_WIDTH . 0.135)
    (:BUMPER_TO_DIAMOND . 0.085)
    (:BRIDGE_OFFSET_Z . 0.104)
    (:BRIDGE_HEIGHT . 0.112)
    (:BRIDGE_WIDTH . 0.052)
    (:BRIDGE_TO_STRIKE_MIN . 0.25)
    (:BRIDGE_TO_STRIKE_MAX . 0.33)
    (:BRIDGE_THICKNESS . 0.014)
    (:ROBOT_RADIUS . 0.4)
    (:BRIDGE_IN_BASE_X . 0.295)
    (:BRIDGE_IN_BASE_Y . 0.86)
    (:BRIDGE_IN_BASE_Z . 0.71)
    (:BRIDGE_IN_BASE_QX . 0.0)
    (:BRIDGE_IN_BASE_QY . 0.0)
    (:BRIDGE_IN_BASE_QZ . 0.766)
    (:BRIDGE_IN_BASE_QW . 0.643)
    (:CUE_AZIMUTH . 0.0524))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Constants>) ostream)
  "Serializes a message object of type '<Constants>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Constants>) istream)
  "Deserializes a message object of type '<Constants>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Constants>)))
  "Returns string type for a message object of type '<Constants>"
  "billiards_msgs/Constants")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Constants)))
  "Returns string type for a message object of type 'Constants"
  "billiards_msgs/Constants")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Constants>)))
  "Returns md5sum for a message object of type '<Constants>"
  "e39ed62e8d9af3b362188ff9c57e1b33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Constants)))
  "Returns md5sum for a message object of type 'Constants"
  "e39ed62e8d9af3b362188ff9c57e1b33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Constants>)))
  "Returns full string definition for message of type '<Constants>"
  (cl:format cl:nil "# Everything is in meters~%~%float32 BALL_RADIUS = 0.028575~%float32 TABLE_LENGTH = 2.235~%float32 TABLE_WIDTH = 1.120~%float32 TABLE_HEIGHT = 0.78~%float32 RAIL_DEPTH = 0.14~%float32 RAIL_HEIGHT = 0.038~%float32 CORNER_POCKET_WIDTH = 0.125~%float32 SIDE_POCKET_WIDTH = 0.135~%float32 BUMPER_TO_DIAMOND = 0.085~%~%float32 BRIDGE_OFFSET_Z = 0.104~%float32 BRIDGE_HEIGHT = 0.112 ~%float32 BRIDGE_WIDTH = 0.052~%~%float32 BRIDGE_TO_STRIKE_MIN = 0.25~%float32 BRIDGE_TO_STRIKE_MAX = 0.33~%float32 BRIDGE_THICKNESS = 0.014~%~%float32 ROBOT_RADIUS = 0.40~%~%~%### Constraint on the offset of the base from the bridge~%float32 BRIDGE_IN_BASE_X = 0.295~%float32 BRIDGE_IN_BASE_Y = 0.860~%float32 BRIDGE_IN_BASE_Z = 0.710  # Use TABLE_HEIGHT - 0.051 (<-- base_link height)~%~%# 90 degrees to the base~%#float32 BRIDGE_IN_BASE_QX = 0.0~%#float32 BRIDGE_IN_BASE_QY = 0.0~%#float32 BRIDGE_IN_BASE_QZ = 0.7071~%#float32 BRIDGE_IN_BASE_QW = 0.7071~%# 100 degrees to the base~%float32 BRIDGE_IN_BASE_QX = 0.0~%float32 BRIDGE_IN_BASE_QY = 0.0~%float32 BRIDGE_IN_BASE_QZ = 0.766~%float32 BRIDGE_IN_BASE_QW = 0.643~%~%float32 CUE_AZIMUTH = 0.0524  # Radians~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Constants)))
  "Returns full string definition for message of type 'Constants"
  (cl:format cl:nil "# Everything is in meters~%~%float32 BALL_RADIUS = 0.028575~%float32 TABLE_LENGTH = 2.235~%float32 TABLE_WIDTH = 1.120~%float32 TABLE_HEIGHT = 0.78~%float32 RAIL_DEPTH = 0.14~%float32 RAIL_HEIGHT = 0.038~%float32 CORNER_POCKET_WIDTH = 0.125~%float32 SIDE_POCKET_WIDTH = 0.135~%float32 BUMPER_TO_DIAMOND = 0.085~%~%float32 BRIDGE_OFFSET_Z = 0.104~%float32 BRIDGE_HEIGHT = 0.112 ~%float32 BRIDGE_WIDTH = 0.052~%~%float32 BRIDGE_TO_STRIKE_MIN = 0.25~%float32 BRIDGE_TO_STRIKE_MAX = 0.33~%float32 BRIDGE_THICKNESS = 0.014~%~%float32 ROBOT_RADIUS = 0.40~%~%~%### Constraint on the offset of the base from the bridge~%float32 BRIDGE_IN_BASE_X = 0.295~%float32 BRIDGE_IN_BASE_Y = 0.860~%float32 BRIDGE_IN_BASE_Z = 0.710  # Use TABLE_HEIGHT - 0.051 (<-- base_link height)~%~%# 90 degrees to the base~%#float32 BRIDGE_IN_BASE_QX = 0.0~%#float32 BRIDGE_IN_BASE_QY = 0.0~%#float32 BRIDGE_IN_BASE_QZ = 0.7071~%#float32 BRIDGE_IN_BASE_QW = 0.7071~%# 100 degrees to the base~%float32 BRIDGE_IN_BASE_QX = 0.0~%float32 BRIDGE_IN_BASE_QY = 0.0~%float32 BRIDGE_IN_BASE_QZ = 0.766~%float32 BRIDGE_IN_BASE_QW = 0.643~%~%float32 CUE_AZIMUTH = 0.0524  # Radians~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Constants>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Constants>))
  "Converts a ROS message object to a list"
  (cl:list 'Constants
))
