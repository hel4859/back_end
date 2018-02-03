; Auto-generated. Do not edit!


(cl:in-package gl8_msgs-msg)


;//! \htmlinclude VehicleSteerFeedBack.msg.html

(cl:defclass <VehicleSteerFeedBack> (roslisp-msg-protocol:ros-message)
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
   (steer_angle
    :reader steer_angle
    :initarg :steer_angle
    :type cl:float
    :initform 0.0)
   (steer_rate
    :reader steer_rate
    :initarg :steer_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleSteerFeedBack (<VehicleSteerFeedBack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSteerFeedBack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSteerFeedBack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gl8_msgs-msg:<VehicleSteerFeedBack> is deprecated: use gl8_msgs-msg:VehicleSteerFeedBack instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleSteerFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:header-val is deprecated.  Use gl8_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_updated-val :lambda-list '(m))
(cl:defmethod is_updated-val ((m <VehicleSteerFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:is_updated-val is deprecated.  Use gl8_msgs-msg:is_updated instead.")
  (is_updated m))

(cl:ensure-generic-function 'steer_angle-val :lambda-list '(m))
(cl:defmethod steer_angle-val ((m <VehicleSteerFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:steer_angle-val is deprecated.  Use gl8_msgs-msg:steer_angle instead.")
  (steer_angle m))

(cl:ensure-generic-function 'steer_rate-val :lambda-list '(m))
(cl:defmethod steer_rate-val ((m <VehicleSteerFeedBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:steer_rate-val is deprecated.  Use gl8_msgs-msg:steer_rate instead.")
  (steer_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSteerFeedBack>) ostream)
  "Serializes a message object of type '<VehicleSteerFeedBack>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_updated) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSteerFeedBack>) istream)
  "Deserializes a message object of type '<VehicleSteerFeedBack>"
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
    (cl:setf (cl:slot-value msg 'steer_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_rate) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSteerFeedBack>)))
  "Returns string type for a message object of type '<VehicleSteerFeedBack>"
  "gl8_msgs/VehicleSteerFeedBack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSteerFeedBack)))
  "Returns string type for a message object of type 'VehicleSteerFeedBack"
  "gl8_msgs/VehicleSteerFeedBack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSteerFeedBack>)))
  "Returns md5sum for a message object of type '<VehicleSteerFeedBack>"
  "fc16d3ad0204b91c33e3dc819e06b316")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSteerFeedBack)))
  "Returns md5sum for a message object of type 'VehicleSteerFeedBack"
  "fc16d3ad0204b91c33e3dc819e06b316")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSteerFeedBack>)))
  "Returns full string definition for message of type '<VehicleSteerFeedBack>"
  (cl:format cl:nil "Header header~%bool is_updated~%float64 steer_angle # degree~%float64 steer_rate  # rad/s~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSteerFeedBack)))
  "Returns full string definition for message of type 'VehicleSteerFeedBack"
  (cl:format cl:nil "Header header~%bool is_updated~%float64 steer_angle # degree~%float64 steer_rate  # rad/s~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSteerFeedBack>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSteerFeedBack>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSteerFeedBack
    (cl:cons ':header (header msg))
    (cl:cons ':is_updated (is_updated msg))
    (cl:cons ':steer_angle (steer_angle msg))
    (cl:cons ':steer_rate (steer_rate msg))
))
