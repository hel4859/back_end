; Auto-generated. Do not edit!


(cl:in-package gl8_msgs-msg)


;//! \htmlinclude GPTRA_MSG.msg.html

(cl:defclass <GPTRA_MSG> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (QF
    :reader QF
    :initarg :QF
    :type cl:fixnum
    :initform 0)
   (sat_num
    :reader sat_num
    :initarg :sat_num
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GPTRA_MSG (<GPTRA_MSG>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPTRA_MSG>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPTRA_MSG)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gl8_msgs-msg:<GPTRA_MSG> is deprecated: use gl8_msgs-msg:GPTRA_MSG instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GPTRA_MSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:header-val is deprecated.  Use gl8_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <GPTRA_MSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:heading-val is deprecated.  Use gl8_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <GPTRA_MSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:pitch-val is deprecated.  Use gl8_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <GPTRA_MSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:roll-val is deprecated.  Use gl8_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'QF-val :lambda-list '(m))
(cl:defmethod QF-val ((m <GPTRA_MSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:QF-val is deprecated.  Use gl8_msgs-msg:QF instead.")
  (QF m))

(cl:ensure-generic-function 'sat_num-val :lambda-list '(m))
(cl:defmethod sat_num-val ((m <GPTRA_MSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:sat_num-val is deprecated.  Use gl8_msgs-msg:sat_num instead.")
  (sat_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPTRA_MSG>) ostream)
  "Serializes a message object of type '<GPTRA_MSG>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'QF)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sat_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPTRA_MSG>) istream)
  "Deserializes a message object of type '<GPTRA_MSG>"
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
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'QF) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sat_num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPTRA_MSG>)))
  "Returns string type for a message object of type '<GPTRA_MSG>"
  "gl8_msgs/GPTRA_MSG")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPTRA_MSG)))
  "Returns string type for a message object of type 'GPTRA_MSG"
  "gl8_msgs/GPTRA_MSG")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPTRA_MSG>)))
  "Returns md5sum for a message object of type '<GPTRA_MSG>"
  "22f6ef8bf35de56ae0f14231bd97e353")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPTRA_MSG)))
  "Returns md5sum for a message object of type 'GPTRA_MSG"
  "22f6ef8bf35de56ae0f14231bd97e353")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPTRA_MSG>)))
  "Returns full string definition for message of type '<GPTRA_MSG>"
  (cl:format cl:nil "std_msgs/Header header~%float64 heading~%float64 pitch~%float64 roll~%int8 QF~%int8 sat_num~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPTRA_MSG)))
  "Returns full string definition for message of type 'GPTRA_MSG"
  (cl:format cl:nil "std_msgs/Header header~%float64 heading~%float64 pitch~%float64 roll~%int8 QF~%int8 sat_num~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPTRA_MSG>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPTRA_MSG>))
  "Converts a ROS message object to a list"
  (cl:list 'GPTRA_MSG
    (cl:cons ':header (header msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':QF (QF msg))
    (cl:cons ':sat_num (sat_num msg))
))
