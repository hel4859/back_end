; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude ControllerInstruction.msg.html

(cl:defclass <ControllerInstruction> (roslisp-msg-protocol:ros-message)
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
   (SteerCmd
    :reader SteerCmd
    :initarg :SteerCmd
    :type cl:float
    :initform 0.0))
)

(cl:defclass ControllerInstruction (<ControllerInstruction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerInstruction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerInstruction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<ControllerInstruction> is deprecated: use can_msgs-msg:ControllerInstruction instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControllerInstruction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'SpeedCmd-val :lambda-list '(m))
(cl:defmethod SpeedCmd-val ((m <ControllerInstruction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:SpeedCmd-val is deprecated.  Use can_msgs-msg:SpeedCmd instead.")
  (SpeedCmd m))

(cl:ensure-generic-function 'SteerCmd-val :lambda-list '(m))
(cl:defmethod SteerCmd-val ((m <ControllerInstruction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:SteerCmd-val is deprecated.  Use can_msgs-msg:SteerCmd instead.")
  (SteerCmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerInstruction>) ostream)
  "Serializes a message object of type '<ControllerInstruction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'SpeedCmd))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerInstruction>) istream)
  "Deserializes a message object of type '<ControllerInstruction>"
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
    (cl:setf (cl:slot-value msg 'SteerCmd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerInstruction>)))
  "Returns string type for a message object of type '<ControllerInstruction>"
  "can_msgs/ControllerInstruction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerInstruction)))
  "Returns string type for a message object of type 'ControllerInstruction"
  "can_msgs/ControllerInstruction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerInstruction>)))
  "Returns md5sum for a message object of type '<ControllerInstruction>"
  "2882926008a24c6b1135d4df7ed2d36c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerInstruction)))
  "Returns md5sum for a message object of type 'ControllerInstruction"
  "2882926008a24c6b1135d4df7ed2d36c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerInstruction>)))
  "Returns full string definition for message of type '<ControllerInstruction>"
  (cl:format cl:nil "Header header~%float32 SpeedCmd~%float32 SteerCmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerInstruction)))
  "Returns full string definition for message of type 'ControllerInstruction"
  (cl:format cl:nil "Header header~%float32 SpeedCmd~%float32 SteerCmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerInstruction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerInstruction>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerInstruction
    (cl:cons ':header (header msg))
    (cl:cons ':SpeedCmd (SpeedCmd msg))
    (cl:cons ':SteerCmd (SteerCmd msg))
))
