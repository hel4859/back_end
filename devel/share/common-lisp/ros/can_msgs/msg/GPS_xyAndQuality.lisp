; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude GPS_xyAndQuality.msg.html

(cl:defclass <GPS_xyAndQuality> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Quality
    :reader Quality
    :initarg :Quality
    :type cl:integer
    :initform 0)
   (X
    :reader X
    :initarg :X
    :type cl:float
    :initform 0.0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:float
    :initform 0.0))
)

(cl:defclass GPS_xyAndQuality (<GPS_xyAndQuality>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPS_xyAndQuality>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPS_xyAndQuality)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<GPS_xyAndQuality> is deprecated: use can_msgs-msg:GPS_xyAndQuality instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GPS_xyAndQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Quality-val :lambda-list '(m))
(cl:defmethod Quality-val ((m <GPS_xyAndQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Quality-val is deprecated.  Use can_msgs-msg:Quality instead.")
  (Quality m))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <GPS_xyAndQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:X-val is deprecated.  Use can_msgs-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <GPS_xyAndQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Y-val is deprecated.  Use can_msgs-msg:Y instead.")
  (Y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPS_xyAndQuality>) ostream)
  "Serializes a message object of type '<GPS_xyAndQuality>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPS_xyAndQuality>) istream)
  "Deserializes a message object of type '<GPS_xyAndQuality>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Quality) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPS_xyAndQuality>)))
  "Returns string type for a message object of type '<GPS_xyAndQuality>"
  "can_msgs/GPS_xyAndQuality")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPS_xyAndQuality)))
  "Returns string type for a message object of type 'GPS_xyAndQuality"
  "can_msgs/GPS_xyAndQuality")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPS_xyAndQuality>)))
  "Returns md5sum for a message object of type '<GPS_xyAndQuality>"
  "74a25d89fbe9f53bf52bc0c5e62b01ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPS_xyAndQuality)))
  "Returns md5sum for a message object of type 'GPS_xyAndQuality"
  "74a25d89fbe9f53bf52bc0c5e62b01ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPS_xyAndQuality>)))
  "Returns full string definition for message of type '<GPS_xyAndQuality>"
  (cl:format cl:nil "Header header~%int32 Quality~%float32 X~%float32 Y~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPS_xyAndQuality)))
  "Returns full string definition for message of type 'GPS_xyAndQuality"
  (cl:format cl:nil "Header header~%int32 Quality~%float32 X~%float32 Y~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPS_xyAndQuality>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPS_xyAndQuality>))
  "Converts a ROS message object to a list"
  (cl:list 'GPS_xyAndQuality
    (cl:cons ':header (header msg))
    (cl:cons ':Quality (Quality msg))
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
))
