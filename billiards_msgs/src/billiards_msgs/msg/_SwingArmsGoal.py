"""autogenerated by genpy from billiards_msgs/SwingArmsGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class SwingArmsGoal(genpy.Message):
  _md5sum = "1438bf444bf9625d8bf525b924322cd8"
  _type = "billiards_msgs/SwingArmsGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
bool away
duration initial_wait

"""
  __slots__ = ['away','initial_wait']
  _slot_types = ['bool','duration']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       away,initial_wait

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SwingArmsGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.away is None:
        self.away = False
      if self.initial_wait is None:
        self.initial_wait = genpy.Duration()
    else:
      self.away = False
      self.initial_wait = genpy.Duration()

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
      _x = self
      buff.write(_struct_B2i.pack(_x.away, _x.initial_wait.secs, _x.initial_wait.nsecs))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.initial_wait is None:
        self.initial_wait = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 9
      (_x.away, _x.initial_wait.secs, _x.initial_wait.nsecs,) = _struct_B2i.unpack(str[start:end])
      self.away = bool(self.away)
      self.initial_wait.canon()
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
      _x = self
      buff.write(_struct_B2i.pack(_x.away, _x.initial_wait.secs, _x.initial_wait.nsecs))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.initial_wait is None:
        self.initial_wait = genpy.Duration()
      end = 0
      _x = self
      start = end
      end += 9
      (_x.away, _x.initial_wait.secs, _x.initial_wait.nsecs,) = _struct_B2i.unpack(str[start:end])
      self.away = bool(self.away)
      self.initial_wait.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B2i = struct.Struct("<B2i")
