; Auto-generated. Do not edit!


(cl:in-package gl8_msgs-msg)


;//! \htmlinclude VehicleSpeedFeedBack.msg.html

(cl:defclass <VehicleSpeedFeedBack> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_updated
    :reader is_updated
    :initarg :is_updated
    :type cl:boolean
    :initform cl:nil)
   (front_wheel_speed
    :reader front_wheel_speed
    :initarg :front_wheel_speed
    :type cl:float
    :initform 0.0)
   (rear_wheel_speed
    :reader rear_wheel_speed
    :initarg :rear_wheel_speed
    :type cl:float
    :initform 0.0)
   (front_left_pulse
    :reader front_left_pulse
    :initarg :front_left_pulse
    :type cl:float
    :initform 0.0)
   (front_right_pulse
    :reader front_right_pulse
    :initarg :front_right_pulse
    :type cl:float
    :initform 0.0)
   (rear_left_pulse
    :reader rear_left_pulse
    :initarg :rear_left_pulse
    :type cl:float
    :initform 0.0)
   (rear_right_pulse
    :reader rear_right_pulse
    :initarg :rear_right_pulse
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleSpeedFeedBack (<VehicleSpeedFeedBack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSpeedFeedBack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSpeedFeedBack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gl8_msgs-msg:<VehicleSpeedFeedBack> is deprecated: use gl8_msgs-msg:VehicleSpeedFeedBack instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleSpeedFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:header-val is deprecated.  Use gl8_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_updated-val :lambda-list '(m))
(cl:defmethod is_updated-val ((m <VehicleSpeedFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:is_updated-val is deprecated.  Use gl8_msgs-msg:is_updated instead.")
  (is_updated m))

(cl:ensure-generic-function 'front_wheel_speed-val :lambda-list '(m))
(cl:defmethod front_wheel_speed-val ((m <VehicleSpeedFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:front_wheel_speed-val is deprecated.  Use gl8_msgs-msg:front_wheel_speed instead.")
  (front_wheel_speed m))

(cl:ensure-generic-function 'rear_wheel_speed-val :lambda-list '(m))
(cl:defmethod rear_wheel_speed-val ((m <VehicleSpeedFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:rear_wheel_speed-val is deprecated.  Use gl8_msgs-msg:rear_wheel_speed instead.")
  (rear_wheel_speed m))

(cl:ensure-generic-function 'front_left_pulse-val :lambda-list '(m))
(cl:defmethod front_left_pulse-val ((m <VehicleSpeedFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:front_left_pulse-val is deprecated.  Use gl8_msgs-msg:front_left_pulse instead.")
  (front_left_pulse m))

(cl:ensure-generic-function 'front_right_pulse-val :lambda-list '(m))
(cl:defmethod front_right_pulse-val ((m <VehicleSpeedFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:front_right_pulse-val is deprecated.  Use gl8_msgs-msg:front_right_pulse instead.")
  (front_right_pulse m))

(cl:ensure-generic-function 'rear_left_pulse-val :lambda-list '(m))
(cl:defmethod rear_left_pulse-val ((m <VehicleSpeedFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:rear_left_pulse-val is deprecated.  Use gl8_msgs-msg:rear_left_pulse instead.")
  (rear_left_pulse m))

(cl:ensure-generic-function 'rear_right_pulse-val :lambda-list '(m))
(cl:defmethod rear_right_pulse-val ((m <VehicleSpeedFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:rear_right_pulse-val is deprecated.  Use gl8_msgs-msg:rear_right_pulse instead.")
  (rear_right_pulse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSpeedFeedBack>) ostream)
  "Serializes a message object of type '<VehicleSpeedFeedBack>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_updated) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rear_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_left_pulse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_right_pulse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rear_left_pulse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rear_right_pulse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSpeedFeedBack>) istream)
  "Deserializes a message object of type '<VehicleSpeedFeedBack>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_updated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_wheel_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_wheel_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_left_pulse) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right_pulse) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_left_pulse) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_right_pulse) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSpeedFeedBack>)))
  "Returns string type for a message object of type '<VehicleSpeedFeedBack>"
  "gl8_msgs/VehicleSpeedFeedBack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSpeedFeedBack)))
  "Returns string type for a message object of type 'VehicleSpeedFeedBack"
  "gl8_msgs/VehicleSpeedFeedBack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSpeedFeedBack>)))
  "Returns md5sum for a message object of type '<VehicleSpeedFeedBack>"
  "86b4891460c1e2b11ebe5987399947a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSpeedFeedBack)))
  "Returns md5sum for a message object of type 'VehicleSpeedFeedBack"
  "86b4891460c1e2b11ebe5987399947a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSpeedFeedBack>)))
  "Returns full string definition for message of type '<VehicleSpeedFeedBack>"
  (cl:format cl:nil "Header header~%bool is_updated~%float64 front_wheel_speed   # m/s~%float64 rear_wheel_speed    # m/s~%float64 front_left_pulse~%float64 front_right_pulse~%float64 rear_left_pulse~%float64 rear_right_pulse~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSpeedFeedBack)))
  "Returns full string definition for message of type 'VehicleSpeedFeedBack"
  (cl:format cl:nil "Header header~%bool is_updated~%float64 front_wheel_speed   # m/s~%float64 rear_wheel_speed    # m/s~%float64 front_left_pulse~%float64 front_right_pulse~%float64 rear_left_pulse~%float64 rear_right_pulse~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSpeedFeedBack>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSpeedFeedBack>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSpeedFeedBack
    (cl:cons ':header (header msg))
    (cl:cons ':is_updated (is_updated msg))
    (cl:cons ':front_wheel_speed (front_wheel_speed msg))
    (cl:cons ':rear_wheel_speed (rear_wheel_speed msg))
    (cl:cons ':front_left_pulse (front_left_pulse msg))
    (cl:cons ':front_right_pulse (front_right_pulse msg))
    (cl:cons ':rear_left_pulse (rear_left_pulse msg))
    (cl:cons ':rear_right_pulse (rear_right_pulse msg))
))
