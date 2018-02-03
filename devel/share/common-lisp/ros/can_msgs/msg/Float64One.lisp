; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude Float64One.msg.html

(cl:defclass <Float64One> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (A_Float
    :reader A_Float
    :initarg :A_Float
    :type cl:float
    :initform 0.0))
)

(cl:defclass Float64One (<Float64One>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64One>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64One)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<Float64One> is deprecated: use can_msgs-msg:Float64One instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Float64One>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'A_Float-val :lambda-list '(m))
(cl:defmethod A_Float-val ((m <Float64One>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:A_Float-val is deprecated.  Use can_msgs-msg:A_Float instead.")
  (A_Float m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64One>) ostream)
  "Serializes a message object of type '<Float64One>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'A_Float))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64One>) istream)
  "Deserializes a message object of type '<Float64One>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A_Float) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64One>)))
  "Returns string type for a message object of type '<Float64One>"
  "can_msgs/Float64One")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64One)))
  "Returns string type for a message object of type 'Float64One"
  "can_msgs/Float64One")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64One>)))
  "Returns md5sum for a message object of type '<Float64One>"
  "49af207a37e24c533506dd80bb811aa7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64One)))
  "Returns md5sum for a message object of type 'Float64One"
  "49af207a37e24c533506dd80bb811aa7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64One>)))
  "Returns full string definition for message of type '<Float64One>"
  (cl:format cl:nil "Header header~%~%float64 A_Float~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64One)))
  "Returns full string definition for message of type 'Float64One"
  (cl:format cl:nil "Header header~%~%float64 A_Float~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64One>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64One>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64One
    (cl:cons ':header (header msg))
    (cl:cons ':A_Float (A_Float msg))
))
