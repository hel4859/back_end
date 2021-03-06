# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tiggo_msgs/EsrObj.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class EsrObj(genpy.Message):
  _md5sum = "358ec0c811c66c45c6e7a30e6d41fe51"
  _type = "tiggo_msgs/EsrObj"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 track_status
int8 occupied_state
float64 x
float64 y
float64 rate
"""
  __slots__ = ['track_status','occupied_state','x','y','rate']
  _slot_types = ['int8','int8','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       track_status,occupied_state,x,y,rate

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EsrObj, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.track_status is None:
        self.track_status = 0
      if self.occupied_state is None:
        self.occupied_state = 0
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.rate is None:
        self.rate = 0.
    else:
      self.track_status = 0
      self.occupied_state = 0
      self.x = 0.
      self.y = 0.
      self.rate = 0.

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
      buff.write(_struct_2b3d.pack(_x.track_status, _x.occupied_state, _x.x, _x.y, _x.rate))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 26
      (_x.track_status, _x.occupied_state, _x.x, _x.y, _x.rate,) = _struct_2b3d.unpack(str[start:end])
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
      buff.write(_struct_2b3d.pack(_x.track_status, _x.occupied_state, _x.x, _x.y, _x.rate))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 26
      (_x.track_status, _x.occupied_state, _x.x, _x.y, _x.rate,) = _struct_2b3d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2b3d = struct.Struct("<2b3d")
