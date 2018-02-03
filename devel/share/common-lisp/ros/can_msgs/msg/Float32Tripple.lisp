; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude Float32Tripple.msg.html

(cl:defclass <Float32Tripple> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (first
    :reader first
    :initarg :first
    :type cl:float
    :initform 0.0)
   (second
    :reader second
    :initarg :second
    :type cl:float
    :initform 0.0)
   (third
    :reader third
    :initarg :third
    :type cl:float
    :initform 0.0))
)

(cl:defclass Float32Tripple (<Float32Tripple>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float32Tripple>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float32Tripple)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<Float32Tripple> is deprecated: use can_msgs-msg:Float32Tripple instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Float32Tripple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <Float32Tripple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:first-val is deprecated.  Use can_msgs-msg:first instead.")
  (first m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <Float32Tripple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:second-val is deprecated.  Use can_msgs-msg:second instead.")
  (second m))

(cl:ensure-generic-function 'third-val :lambda-list '(m))
(cl:defmethod third-val ((m <Float32Tripple>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:third-val is deprecated.  Use can_msgs-msg:third instead.")
  (third m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float32Tripple>) ostream)
  "Serializes a message object of type '<Float32Tripple>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'first))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'third))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float32Tripple>) istream)
  "Deserializes a message object of type '<Float32Tripple>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'first) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'second) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'third) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float32Tripple>)))
  "Returns string type for a message object of type '<Float32Tripple>"
  "can_msgs/Float32Tripple")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float32Tripple)))
  "Returns string type for a message object of type 'Float32Tripple"
  "can_msgs/Float32Tripple")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float32Tripple>)))
  "Returns md5sum for a message object of type '<Float32Tripple>"
  "4020e5b297671bb75ee41c753decda58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float32Tripple)))
  "Returns md5sum for a message object of type 'Float32Tripple"
  "4020e5b297671bb75ee41c753decda58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float32Tripple>)))
  "Returns full string definition for message of type '<Float32Tripple>"
  (cl:format cl:nil "Header header~%~%float32 first~%float32 second~%float32 third~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float32Tripple)))
  "Returns full string definition for message of type 'Float32Tripple"
  (cl:format cl:nil "Header header~%~%float32 first~%float32 second~%float32 third~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float32Tripple>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float32Tripple>))
  "Converts a ROS message object to a list"
  (cl:list 'Float32Tripple
    (cl:cons ':header (header msg))
    (cl:cons ':first (first msg))
    (cl:cons ':second (second msg))
    (cl:cons ':third (third msg))
))
