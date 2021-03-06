"""autogenerated by genpy from billiards_planner/PlanOneShotRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PlanOneShotRequest(genpy.Message):
  _md5sum = "e55a614ea143dccc553b213b41c5a2f0"
  _type = "billiards_planner/PlanOneShotRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 cue_ball_id = 0

"""
  # Pseudo-constants
  cue_ball_id = 0

  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PlanOneShotRequest, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
"""autogenerated by genpy from billiards_planner/PlanOneShotResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import billiards_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class PlanOneShotResponse(genpy.Message):
  _md5sum = "fb9eff8f1a7ab0ad576652f1eb8e7f06"
  _type = "billiards_planner/PlanOneShotResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """billiards_msgs/ShotPlan[] shot_plans
billiards_msgs/BallState[] target_balls
billiards_msgs/PocketState[] target_pockets
float64[] scores


================================================================================
MSG: billiards_msgs/ShotPlan
# describes plan for a single shot
BallState ball
geometry_msgs/PoseStamped base_pose                     # where PR2 should "stand"
geometry_msgs/PoseStamped bridge_pose                   # where to put the bridge
                                                        # orientation is: x-forward (towards cue ball)
                                                        #                 z-(up)
                                                        #                 y-robot left
float64                   velocity                      # not used for now


================================================================================
MSG: billiards_msgs/BallState
int8                  id                  # id of the ball
                                          # 0-cue ball, 1-15 for each of the 15 balls
bool                  pocketed            # false if ball is on the table
geometry_msgs/PointStamped   point        # location of each ball
int8                  group_id            # if we want to group the ball

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: billiards_msgs/PocketState
uint8                 id              # pocket id, see wiki for picture
geometry_msgs/PointStamped   point    # point of the pocket to aim for,
                                      # target ball trajectory should
                                      # cross this point if shot is successful


"""
  __slots__ = ['shot_plans','target_balls','target_pockets','scores']
  _slot_types = ['billiards_msgs/ShotPlan[]','billiards_msgs/BallState[]','billiards_msgs/PocketState[]','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       shot_plans,target_balls,target_pockets,scores

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PlanOneShotResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.shot_plans is None:
        self.shot_plans = []
      if self.target_balls is None:
        self.target_balls = []
      if self.target_pockets is None:
        self.target_pockets = []
      if self.scores is None:
        self.scores = []
    else:
      self.shot_plans = []
      self.target_balls = []
      self.target_pockets = []
      self.scores = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.shot_plans)
      buff.write(_struct_I.pack(length))
      for val1 in self.shot_plans:
        _v1 = val1.ball
        _x = _v1
        buff.write(_struct_bB.pack(_x.id, _x.pocketed))
        _v2 = _v1.point
        _v3 = _v2.header
        buff.write(_struct_I.pack(_v3.seq))
        _v4 = _v3.stamp
        _x = _v4
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v3.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v5 = _v2.point
        _x = _v5
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        buff.write(_struct_b.pack(_v1.group_id))
        _v6 = val1.base_pose
        _v7 = _v6.header
        buff.write(_struct_I.pack(_v7.seq))
        _v8 = _v7.stamp
        _x = _v8
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v7.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v9 = _v6.pose
        _v10 = _v9.position
        _x = _v10
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v11 = _v9.orientation
        _x = _v11
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        _v12 = val1.bridge_pose
        _v13 = _v12.header
        buff.write(_struct_I.pack(_v13.seq))
        _v14 = _v13.stamp
        _x = _v14
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v13.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v15 = _v12.pose
        _v16 = _v15.position
        _x = _v16
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v17 = _v15.orientation
        _x = _v17
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_struct_d.pack(val1.velocity))
      length = len(self.target_balls)
      buff.write(_struct_I.pack(length))
      for val1 in self.target_balls:
        _x = val1
        buff.write(_struct_bB.pack(_x.id, _x.pocketed))
        _v18 = val1.point
        _v19 = _v18.header
        buff.write(_struct_I.pack(_v19.seq))
        _v20 = _v19.stamp
        _x = _v20
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v19.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v21 = _v18.point
        _x = _v21
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        buff.write(_struct_b.pack(val1.group_id))
      length = len(self.target_pockets)
      buff.write(_struct_I.pack(length))
      for val1 in self.target_pockets:
        buff.write(_struct_B.pack(val1.id))
        _v22 = val1.point
        _v23 = _v22.header
        buff.write(_struct_I.pack(_v23.seq))
        _v24 = _v23.stamp
        _x = _v24
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v23.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v25 = _v22.point
        _x = _v25
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      length = len(self.scores)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.scores))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.shot_plans is None:
        self.shot_plans = None
      if self.target_balls is None:
        self.target_balls = None
      if self.target_pockets is None:
        self.target_pockets = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.shot_plans = []
      for i in range(0, length):
        val1 = billiards_msgs.msg.ShotPlan()
        _v26 = val1.ball
        _x = _v26
        start = end
        end += 2
        (_x.id, _x.pocketed,) = _struct_bB.unpack(str[start:end])
        _v26.pocketed = bool(_v26.pocketed)
        _v27 = _v26.point
        _v28 = _v27.header
        start = end
        end += 4
        (_v28.seq,) = _struct_I.unpack(str[start:end])
        _v29 = _v28.stamp
        _x = _v29
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v28.frame_id = str[start:end].decode('utf-8')
        else:
          _v28.frame_id = str[start:end]
        _v30 = _v27.point
        _x = _v30
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 1
        (_v26.group_id,) = _struct_b.unpack(str[start:end])
        _v31 = val1.base_pose
        _v32 = _v31.header
        start = end
        end += 4
        (_v32.seq,) = _struct_I.unpack(str[start:end])
        _v33 = _v32.stamp
        _x = _v33
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v32.frame_id = str[start:end].decode('utf-8')
        else:
          _v32.frame_id = str[start:end]
        _v34 = _v31.pose
        _v35 = _v34.position
        _x = _v35
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v36 = _v34.orientation
        _x = _v36
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        _v37 = val1.bridge_pose
        _v38 = _v37.header
        start = end
        end += 4
        (_v38.seq,) = _struct_I.unpack(str[start:end])
        _v39 = _v38.stamp
        _x = _v39
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v38.frame_id = str[start:end].decode('utf-8')
        else:
          _v38.frame_id = str[start:end]
        _v40 = _v37.pose
        _v41 = _v40.position
        _x = _v41
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v42 = _v40.orientation
        _x = _v42
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        start = end
        end += 8
        (val1.velocity,) = _struct_d.unpack(str[start:end])
        self.shot_plans.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.target_balls = []
      for i in range(0, length):
        val1 = billiards_msgs.msg.BallState()
        _x = val1
        start = end
        end += 2
        (_x.id, _x.pocketed,) = _struct_bB.unpack(str[start:end])
        val1.pocketed = bool(val1.pocketed)
        _v43 = val1.point
        _v44 = _v43.header
        start = end
        end += 4
        (_v44.seq,) = _struct_I.unpack(str[start:end])
        _v45 = _v44.stamp
        _x = _v45
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v44.frame_id = str[start:end].decode('utf-8')
        else:
          _v44.frame_id = str[start:end]
        _v46 = _v43.point
        _x = _v46
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 1
        (val1.group_id,) = _struct_b.unpack(str[start:end])
        self.target_balls.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.target_pockets = []
      for i in range(0, length):
        val1 = billiards_msgs.msg.PocketState()
        start = end
        end += 1
        (val1.id,) = _struct_B.unpack(str[start:end])
        _v47 = val1.point
        _v48 = _v47.header
        start = end
        end += 4
        (_v48.seq,) = _struct_I.unpack(str[start:end])
        _v49 = _v48.stamp
        _x = _v49
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v48.frame_id = str[start:end].decode('utf-8')
        else:
          _v48.frame_id = str[start:end]
        _v50 = _v47.point
        _x = _v50
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.target_pockets.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.scores = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.shot_plans)
      buff.write(_struct_I.pack(length))
      for val1 in self.shot_plans:
        _v51 = val1.ball
        _x = _v51
        buff.write(_struct_bB.pack(_x.id, _x.pocketed))
        _v52 = _v51.point
        _v53 = _v52.header
        buff.write(_struct_I.pack(_v53.seq))
        _v54 = _v53.stamp
        _x = _v54
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v53.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v55 = _v52.point
        _x = _v55
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        buff.write(_struct_b.pack(_v51.group_id))
        _v56 = val1.base_pose
        _v57 = _v56.header
        buff.write(_struct_I.pack(_v57.seq))
        _v58 = _v57.stamp
        _x = _v58
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v57.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v59 = _v56.pose
        _v60 = _v59.position
        _x = _v60
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v61 = _v59.orientation
        _x = _v61
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        _v62 = val1.bridge_pose
        _v63 = _v62.header
        buff.write(_struct_I.pack(_v63.seq))
        _v64 = _v63.stamp
        _x = _v64
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v63.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v65 = _v62.pose
        _v66 = _v65.position
        _x = _v66
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v67 = _v65.orientation
        _x = _v67
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_struct_d.pack(val1.velocity))
      length = len(self.target_balls)
      buff.write(_struct_I.pack(length))
      for val1 in self.target_balls:
        _x = val1
        buff.write(_struct_bB.pack(_x.id, _x.pocketed))
        _v68 = val1.point
        _v69 = _v68.header
        buff.write(_struct_I.pack(_v69.seq))
        _v70 = _v69.stamp
        _x = _v70
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v69.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v71 = _v68.point
        _x = _v71
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        buff.write(_struct_b.pack(val1.group_id))
      length = len(self.target_pockets)
      buff.write(_struct_I.pack(length))
      for val1 in self.target_pockets:
        buff.write(_struct_B.pack(val1.id))
        _v72 = val1.point
        _v73 = _v72.header
        buff.write(_struct_I.pack(_v73.seq))
        _v74 = _v73.stamp
        _x = _v74
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v73.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v75 = _v72.point
        _x = _v75
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      length = len(self.scores)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.scores.tostring())
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.shot_plans is None:
        self.shot_plans = None
      if self.target_balls is None:
        self.target_balls = None
      if self.target_pockets is None:
        self.target_pockets = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.shot_plans = []
      for i in range(0, length):
        val1 = billiards_msgs.msg.ShotPlan()
        _v76 = val1.ball
        _x = _v76
        start = end
        end += 2
        (_x.id, _x.pocketed,) = _struct_bB.unpack(str[start:end])
        _v76.pocketed = bool(_v76.pocketed)
        _v77 = _v76.point
        _v78 = _v77.header
        start = end
        end += 4
        (_v78.seq,) = _struct_I.unpack(str[start:end])
        _v79 = _v78.stamp
        _x = _v79
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v78.frame_id = str[start:end].decode('utf-8')
        else:
          _v78.frame_id = str[start:end]
        _v80 = _v77.point
        _x = _v80
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 1
        (_v76.group_id,) = _struct_b.unpack(str[start:end])
        _v81 = val1.base_pose
        _v82 = _v81.header
        start = end
        end += 4
        (_v82.seq,) = _struct_I.unpack(str[start:end])
        _v83 = _v82.stamp
        _x = _v83
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v82.frame_id = str[start:end].decode('utf-8')
        else:
          _v82.frame_id = str[start:end]
        _v84 = _v81.pose
        _v85 = _v84.position
        _x = _v85
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v86 = _v84.orientation
        _x = _v86
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        _v87 = val1.bridge_pose
        _v88 = _v87.header
        start = end
        end += 4
        (_v88.seq,) = _struct_I.unpack(str[start:end])
        _v89 = _v88.stamp
        _x = _v89
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v88.frame_id = str[start:end].decode('utf-8')
        else:
          _v88.frame_id = str[start:end]
        _v90 = _v87.pose
        _v91 = _v90.position
        _x = _v91
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v92 = _v90.orientation
        _x = _v92
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        start = end
        end += 8
        (val1.velocity,) = _struct_d.unpack(str[start:end])
        self.shot_plans.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.target_balls = []
      for i in range(0, length):
        val1 = billiards_msgs.msg.BallState()
        _x = val1
        start = end
        end += 2
        (_x.id, _x.pocketed,) = _struct_bB.unpack(str[start:end])
        val1.pocketed = bool(val1.pocketed)
        _v93 = val1.point
        _v94 = _v93.header
        start = end
        end += 4
        (_v94.seq,) = _struct_I.unpack(str[start:end])
        _v95 = _v94.stamp
        _x = _v95
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v94.frame_id = str[start:end].decode('utf-8')
        else:
          _v94.frame_id = str[start:end]
        _v96 = _v93.point
        _x = _v96
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 1
        (val1.group_id,) = _struct_b.unpack(str[start:end])
        self.target_balls.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.target_pockets = []
      for i in range(0, length):
        val1 = billiards_msgs.msg.PocketState()
        start = end
        end += 1
        (val1.id,) = _struct_B.unpack(str[start:end])
        _v97 = val1.point
        _v98 = _v97.header
        start = end
        end += 4
        (_v98.seq,) = _struct_I.unpack(str[start:end])
        _v99 = _v98.stamp
        _x = _v99
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v98.frame_id = str[start:end].decode('utf-8')
        else:
          _v98.frame_id = str[start:end]
        _v100 = _v97.point
        _x = _v100
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.target_pockets.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.scores = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_b = struct.Struct("<b")
_struct_d = struct.Struct("<d")
_struct_bB = struct.Struct("<bB")
_struct_B = struct.Struct("<B")
_struct_4d = struct.Struct("<4d")
_struct_2I = struct.Struct("<2I")
_struct_3d = struct.Struct("<3d")
class PlanOneShot(object):
  _type          = 'billiards_planner/PlanOneShot'
  _md5sum = '1738dae8d954291c88f7ba5441984a1e'
  _request_class  = PlanOneShotRequest
  _response_class = PlanOneShotResponse
