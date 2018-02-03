; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude ObstacleStop.msg.html

(cl:defclass <ObstacleStop> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (StopCmd
    :reader StopCmd
    :initarg :StopCmd
    :type cl:fixnum
    :initform 0)
   (SlowdownFlag
    :reader SlowdownFlag
    :initarg :SlowdownFlag
    :type cl:fixnum
    :initform 0)
   (RefSpeed
    :reader RefSpeed
    :initarg :RefSpeed
    :type cl:float
    :initform 0.0))
)

(cl:defclass ObstacleStop (<ObstacleStop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleStop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleStop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<ObstacleStop> is deprecated: use can_msgs-msg:ObstacleStop instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstacleStop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'StopCmd-val :lambda-list '(m))
(cl:defmethod StopCmd-val ((m <ObstacleStop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:StopCmd-val is deprecated.  Use can_msgs-msg:StopCmd instead.")
  (StopCmd m))

(cl:ensure-generic-function 'SlowdownFlag-val :lambda-list '(m))
(cl:defmethod SlowdownFlag-val ((m <ObstacleStop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:SlowdownFlag-val is deprecated.  Use can_msgs-msg:SlowdownFlag instead.")
  (SlowdownFlag m))

(cl:ensure-generic-function 'RefSpeed-val :lambda-list '(m))
(cl:defmethod RefSpeed-val ((m <ObstacleStop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:RefSpeed-val is deprecated.  Use can_msgs-msg:RefSpeed instead.")
  (RefSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleStop>) ostream)
  "Serializes a message object of type '<ObstacleStop>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StopCmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SlowdownFlag)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RefSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleStop>) istream)
  "Deserializes a message object of type '<ObstacleStop>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StopCmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SlowdownFlag)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RefSpeed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleStop>)))
  "Returns string type for a message object of type '<ObstacleStop>"
  "can_msgs/ObstacleStop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleStop)))
  "Returns string type for a message object of type 'ObstacleStop"
  "can_msgs/ObstacleStop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleStop>)))
  "Returns md5sum for a message object of type '<ObstacleStop>"
  "c36e95047ae42ed329b7b25f11fe78f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleStop)))
  "Returns md5sum for a message object of type 'ObstacleStop"
  "c36e95047ae42ed329b7b25f11fe78f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleStop>)))
  "Returns full string definition for message of type '<ObstacleStop>"
  (cl:format cl:nil "Header header~%uint8 StopCmd~%uint8 SlowdownFlag~%float32 RefSpeed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleStop)))
  "Returns full string definition for message of type 'ObstacleStop"
  (cl:format cl:nil "Header header~%uint8 StopCmd~%uint8 SlowdownFlag~%float32 RefSpeed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleStop>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleStop>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleStop
    (cl:cons ':header (header msg))
    (cl:cons ':StopCmd (StopCmd msg))
    (cl:cons ':SlowdownFlag (SlowdownFlag msg))
    (cl:cons ':RefSpeed (RefSpeed msg))
))
