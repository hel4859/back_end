; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude Float32Pair.msg.html

(cl:defclass <Float32Pair> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass Float32Pair (<Float32Pair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float32Pair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float32Pair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<Float32Pair> is deprecated: use can_msgs-msg:Float32Pair instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Float32Pair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <Float32Pair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:first-val is deprecated.  Use can_msgs-msg:first instead.")
  (first m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <Float32Pair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:second-val is deprecated.  Use can_msgs-msg:second instead.")
  (second m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float32Pair>) ostream)
  "Serializes a message object of type '<Float32Pair>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float32Pair>) istream)
  "Deserializes a message object of type '<Float32Pair>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float32Pair>)))
  "Returns string type for a message object of type '<Float32Pair>"
  "can_msgs/Float32Pair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float32Pair)))
  "Returns string type for a message object of type 'Float32Pair"
  "can_msgs/Float32Pair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float32Pair>)))
  "Returns md5sum for a message object of type '<Float32Pair>"
  "7bcfb8dd17fcce1fc27a400dde2a0f2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float32Pair)))
  "Returns md5sum for a message object of type 'Float32Pair"
  "7bcfb8dd17fcce1fc27a400dde2a0f2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float32Pair>)))
  "Returns full string definition for message of type '<Float32Pair>"
  (cl:format cl:nil "Header header~%~%float32 first~%float32 second~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float32Pair)))
  "Returns full string definition for message of type 'Float32Pair"
  (cl:format cl:nil "Header header~%~%float32 first~%float32 second~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float32Pair>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float32Pair>))
  "Converts a ROS message object to a list"
  (cl:list 'Float32Pair
    (cl:cons ':header (header msg))
    (cl:cons ':first (first msg))
    (cl:cons ':second (second msg))
))
