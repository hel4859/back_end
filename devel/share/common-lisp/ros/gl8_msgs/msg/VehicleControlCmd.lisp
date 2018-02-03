; Auto-generated. Do not edit!


(cl:in-package gl8_msgs-msg)


;//! \htmlinclude VehicleControlCmd.msg.html

(cl:defclass <VehicleControlCmd> (roslisp-msg-protocol:ros-message)
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
   (steer_cmd
    :reader steer_cmd
    :initarg :steer_cmd
    :type cl:float
    :initform 0.0)
   (speed_cmd
    :reader speed_cmd
    :initarg :speed_cmd
    :type cl:float
    :initform 0.0)
   (acc_cmd
    :reader acc_cmd
    :initarg :acc_cmd
    :type cl:float
    :initform 0.0)
   (dec_cmd
    :reader dec_cmd
    :initarg :dec_cmd
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleControlCmd (<VehicleControlCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleControlCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleControlCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gl8_msgs-msg:<VehicleControlCmd> is deprecated: use gl8_msgs-msg:VehicleControlCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleControlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:header-val is deprecated.  Use gl8_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_updated-val :lambda-list '(m))
(cl:defmethod is_updated-val ((m <VehicleControlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:is_updated-val is deprecated.  Use gl8_msgs-msg:is_updated instead.")
  (is_updated m))

(cl:ensure-generic-function 'steer_cmd-val :lambda-list '(m))
(cl:defmethod steer_cmd-val ((m <VehicleControlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:steer_cmd-val is deprecated.  Use gl8_msgs-msg:steer_cmd instead.")
  (steer_cmd m))

(cl:ensure-generic-function 'speed_cmd-val :lambda-list '(m))
(cl:defmethod speed_cmd-val ((m <VehicleControlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:speed_cmd-val is deprecated.  Use gl8_msgs-msg:speed_cmd instead.")
  (speed_cmd m))

(cl:ensure-generic-function 'acc_cmd-val :lambda-list '(m))
(cl:defmethod acc_cmd-val ((m <VehicleControlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:acc_cmd-val is deprecated.  Use gl8_msgs-msg:acc_cmd instead.")
  (acc_cmd m))

(cl:ensure-generic-function 'dec_cmd-val :lambda-list '(m))
(cl:defmethod dec_cmd-val ((m <VehicleControlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:dec_cmd-val is deprecated.  Use gl8_msgs-msg:dec_cmd instead.")
  (dec_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleControlCmd>) ostream)
  "Serializes a message object of type '<VehicleControlCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_updated) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dec_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleControlCmd>) istream)
  "Deserializes a message object of type '<VehicleControlCmd>"
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
    (cl:setf (cl:slot-value msg 'steer_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dec_cmd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleControlCmd>)))
  "Returns string type for a message object of type '<VehicleControlCmd>"
  "gl8_msgs/VehicleControlCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleControlCmd)))
  "Returns string type for a message object of type 'VehicleControlCmd"
  "gl8_msgs/VehicleControlCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleControlCmd>)))
  "Returns md5sum for a message object of type '<VehicleControlCmd>"
  "da750596c728e0dd356ac699beb73c77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleControlCmd)))
  "Returns md5sum for a message object of type 'VehicleControlCmd"
  "da750596c728e0dd356ac699beb73c77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleControlCmd>)))
  "Returns full string definition for message of type '<VehicleControlCmd>"
  (cl:format cl:nil "Header header~%bool is_updated~%float64 steer_cmd  #target steer angle~%float64 speed_cmd  #target speed ~%float64 acc_cmd    #target acceleration~%float64 dec_cmd    #target deceleration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleControlCmd)))
  "Returns full string definition for message of type 'VehicleControlCmd"
  (cl:format cl:nil "Header header~%bool is_updated~%float64 steer_cmd  #target steer angle~%float64 speed_cmd  #target speed ~%float64 acc_cmd    #target acceleration~%float64 dec_cmd    #target deceleration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleControlCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleControlCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleControlCmd
    (cl:cons ':header (header msg))
    (cl:cons ':is_updated (is_updated msg))
    (cl:cons ':steer_cmd (steer_cmd msg))
    (cl:cons ':speed_cmd (speed_cmd msg))
    (cl:cons ':acc_cmd (acc_cmd msg))
    (cl:cons ':dec_cmd (dec_cmd msg))
))
