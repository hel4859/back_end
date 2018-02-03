; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude Int32One.msg.html

(cl:defclass <Int32One> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (A_Int
    :reader A_Int
    :initarg :A_Int
    :type cl:integer
    :initform 0))
)

(cl:defclass Int32One (<Int32One>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int32One>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int32One)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<Int32One> is deprecated: use can_msgs-msg:Int32One instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Int32One>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'A_Int-val :lambda-list '(m))
(cl:defmethod A_Int-val ((m <Int32One>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:A_Int-val is deprecated.  Use can_msgs-msg:A_Int instead.")
  (A_Int m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int32One>) ostream)
  "Serializes a message object of type '<Int32One>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'A_Int)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int32One>) istream)
  "Deserializes a message object of type '<Int32One>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A_Int) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int32One>)))
  "Returns string type for a message object of type '<Int32One>"
  "can_msgs/Int32One")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int32One)))
  "Returns string type for a message object of type 'Int32One"
  "can_msgs/Int32One")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int32One>)))
  "Returns md5sum for a message object of type '<Int32One>"
  "78ca365ea218dad084420bfe70257e78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int32One)))
  "Returns md5sum for a message object of type 'Int32One"
  "78ca365ea218dad084420bfe70257e78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int32One>)))
  "Returns full string definition for message of type '<Int32One>"
  (cl:format cl:nil "Header header~%~%int32 A_Int~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int32One)))
  "Returns full string definition for message of type 'Int32One"
  (cl:format cl:nil "Header header~%~%int32 A_Int~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int32One>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int32One>))
  "Converts a ROS message object to a list"
  (cl:list 'Int32One
    (cl:cons ':header (header msg))
    (cl:cons ':A_Int (A_Int msg))
))
