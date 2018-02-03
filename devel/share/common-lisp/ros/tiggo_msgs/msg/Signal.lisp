; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude Signal.msg.html

(cl:defclass <Signal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (valid
    :reader valid
    :initarg :valid
    :type cl:fixnum
    :initform 0)
   (over_taking
    :reader over_taking
    :initarg :over_taking
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Signal (<Signal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Signal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Signal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<Signal> is deprecated: use tiggo_msgs-msg:Signal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:header-val is deprecated.  Use tiggo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:valid-val is deprecated.  Use tiggo_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'over_taking-val :lambda-list '(m))
(cl:defmethod over_taking-val ((m <Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:over_taking-val is deprecated.  Use tiggo_msgs-msg:over_taking instead.")
  (over_taking m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Signal>) ostream)
  "Serializes a message object of type '<Signal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'valid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'over_taking)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Signal>) istream)
  "Deserializes a message object of type '<Signal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'valid) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'over_taking) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Signal>)))
  "Returns string type for a message object of type '<Signal>"
  "tiggo_msgs/Signal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Signal)))
  "Returns string type for a message object of type 'Signal"
  "tiggo_msgs/Signal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Signal>)))
  "Returns md5sum for a message object of type '<Signal>"
  "e08b8e1490261397f8ee6dddcd75f85c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Signal)))
  "Returns md5sum for a message object of type 'Signal"
  "e08b8e1490261397f8ee6dddcd75f85c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Signal>)))
  "Returns full string definition for message of type '<Signal>"
  (cl:format cl:nil "std_msgs/Header header~%int8 valid~%int8 over_taking~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Signal)))
  "Returns full string definition for message of type 'Signal"
  (cl:format cl:nil "std_msgs/Header header~%int8 valid~%int8 over_taking~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Signal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Signal>))
  "Converts a ROS message object to a list"
  (cl:list 'Signal
    (cl:cons ':header (header msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':over_taking (over_taking msg))
))
