; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude SteerAndSpeedCmd.msg.html

(cl:defclass <SteerAndSpeedCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (SpeedCmd
    :reader SpeedCmd
    :initarg :SpeedCmd
    :type cl:float
    :initform 0.0)
   (AccCmd
    :reader AccCmd
    :initarg :AccCmd
    :type cl:float
    :initform 0.0)
   (SteerCmd
    :reader SteerCmd
    :initarg :SteerCmd
    :type cl:float
    :initform 0.0))
)

(cl:defclass SteerAndSpeedCmd (<SteerAndSpeedCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteerAndSpeedCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteerAndSpeedCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<SteerAndSpeedCmd> is deprecated: use can_msgs-msg:SteerAndSpeedCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteerAndSpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'SpeedCmd-val :lambda-list '(m))
(cl:defmethod SpeedCmd-val ((m <SteerAndSpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:SpeedCmd-val is deprecated.  Use can_msgs-msg:SpeedCmd instead.")
  (SpeedCmd m))

(cl:ensure-generic-function 'AccCmd-val :lambda-list '(m))
(cl:defmethod AccCmd-val ((m <SteerAndSpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:AccCmd-val is deprecated.  Use can_msgs-msg:AccCmd instead.")
  (AccCmd m))

(cl:ensure-generic-function 'SteerCmd-val :lambda-list '(m))
(cl:defmethod SteerCmd-val ((m <SteerAndSpeedCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:SteerCmd-val is deprecated.  Use can_msgs-msg:SteerCmd instead.")
  (SteerCmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteerAndSpeedCmd>) ostream)
  "Serializes a message object of type '<SteerAndSpeedCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SpeedCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'AccCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SteerCmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteerAndSpeedCmd>) istream)
  "Deserializes a message object of type '<SteerAndSpeedCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SpeedCmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AccCmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SteerCmd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteerAndSpeedCmd>)))
  "Returns string type for a message object of type '<SteerAndSpeedCmd>"
  "can_msgs/SteerAndSpeedCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteerAndSpeedCmd)))
  "Returns string type for a message object of type 'SteerAndSpeedCmd"
  "can_msgs/SteerAndSpeedCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteerAndSpeedCmd>)))
  "Returns md5sum for a message object of type '<SteerAndSpeedCmd>"
  "ef1c36f1e2dba7ea685ca75c5d9a09b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteerAndSpeedCmd)))
  "Returns md5sum for a message object of type 'SteerAndSpeedCmd"
  "ef1c36f1e2dba7ea685ca75c5d9a09b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteerAndSpeedCmd>)))
  "Returns full string definition for message of type '<SteerAndSpeedCmd>"
  (cl:format cl:nil "Header header~%float32 SpeedCmd~%float32 AccCmd~%float32 SteerCmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteerAndSpeedCmd)))
  "Returns full string definition for message of type 'SteerAndSpeedCmd"
  (cl:format cl:nil "Header header~%float32 SpeedCmd~%float32 AccCmd~%float32 SteerCmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteerAndSpeedCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteerAndSpeedCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'SteerAndSpeedCmd
    (cl:cons ':header (header msg))
    (cl:cons ':SpeedCmd (SpeedCmd msg))
    (cl:cons ':AccCmd (AccCmd msg))
    (cl:cons ':SteerCmd (SteerCmd msg))
))
