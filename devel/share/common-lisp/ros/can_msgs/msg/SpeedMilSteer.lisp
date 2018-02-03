; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude SpeedMilSteer.msg.html

(cl:defclass <SpeedMilSteer> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Speed
    :reader Speed
    :initarg :Speed
    :type cl:float
    :initform 0.0)
   (Mileage
    :reader Mileage
    :initarg :Mileage
    :type cl:float
    :initform 0.0)
   (Steer
    :reader Steer
    :initarg :Steer
    :type cl:float
    :initform 0.0))
)

(cl:defclass SpeedMilSteer (<SpeedMilSteer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedMilSteer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedMilSteer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<SpeedMilSteer> is deprecated: use can_msgs-msg:SpeedMilSteer instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SpeedMilSteer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Speed-val :lambda-list '(m))
(cl:defmethod Speed-val ((m <SpeedMilSteer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Speed-val is deprecated.  Use can_msgs-msg:Speed instead.")
  (Speed m))

(cl:ensure-generic-function 'Mileage-val :lambda-list '(m))
(cl:defmethod Mileage-val ((m <SpeedMilSteer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Mileage-val is deprecated.  Use can_msgs-msg:Mileage instead.")
  (Mileage m))

(cl:ensure-generic-function 'Steer-val :lambda-list '(m))
(cl:defmethod Steer-val ((m <SpeedMilSteer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Steer-val is deprecated.  Use can_msgs-msg:Steer instead.")
  (Steer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedMilSteer>) ostream)
  "Serializes a message object of type '<SpeedMilSteer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedMilSteer>) istream)
  "Deserializes a message object of type '<SpeedMilSteer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Mileage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Steer) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedMilSteer>)))
  "Returns string type for a message object of type '<SpeedMilSteer>"
  "can_msgs/SpeedMilSteer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedMilSteer)))
  "Returns string type for a message object of type 'SpeedMilSteer"
  "can_msgs/SpeedMilSteer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedMilSteer>)))
  "Returns md5sum for a message object of type '<SpeedMilSteer>"
  "2d6e9a9fe080f7d26c3c0272505d7a39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedMilSteer)))
  "Returns md5sum for a message object of type 'SpeedMilSteer"
  "2d6e9a9fe080f7d26c3c0272505d7a39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedMilSteer>)))
  "Returns full string definition for message of type '<SpeedMilSteer>"
  (cl:format cl:nil "Header header~%float32 Speed~%float32 Mileage~%float32 Steer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedMilSteer)))
  "Returns full string definition for message of type 'SpeedMilSteer"
  (cl:format cl:nil "Header header~%float32 Speed~%float32 Mileage~%float32 Steer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedMilSteer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedMilSteer>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedMilSteer
    (cl:cons ':header (header msg))
    (cl:cons ':Speed (Speed msg))
    (cl:cons ':Mileage (Mileage msg))
    (cl:cons ':Steer (Steer msg))
))
