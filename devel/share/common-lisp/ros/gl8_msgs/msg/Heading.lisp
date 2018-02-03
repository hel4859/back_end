; Auto-generated. Do not edit!


(cl:in-package gl8_msgs-msg)


;//! \htmlinclude Heading.msg.html

(cl:defclass <Heading> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type sensor_msgs-msg:NavSatStatus
    :initform (cl:make-instance 'sensor_msgs-msg:NavSatStatus))
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0)
   (std_dev
    :reader std_dev
    :initarg :std_dev
    :type cl:float
    :initform 0.0))
)

(cl:defclass Heading (<Heading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Heading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Heading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gl8_msgs-msg:<Heading> is deprecated: use gl8_msgs-msg:Heading instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Heading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:header-val is deprecated.  Use gl8_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Heading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:status-val is deprecated.  Use gl8_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Heading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:data-val is deprecated.  Use gl8_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'std_dev-val :lambda-list '(m))
(cl:defmethod std_dev-val ((m <Heading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:std_dev-val is deprecated.  Use gl8_msgs-msg:std_dev instead.")
  (std_dev m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Heading>) ostream)
  "Serializes a message object of type '<Heading>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Heading>) istream)
  "Deserializes a message object of type '<Heading>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Heading>)))
  "Returns string type for a message object of type '<Heading>"
  "gl8_msgs/Heading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Heading)))
  "Returns string type for a message object of type 'Heading"
  "gl8_msgs/Heading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Heading>)))
  "Returns md5sum for a message object of type '<Heading>"
  "908b85f3e12fe5f8bf9abe03aeb2ef3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Heading)))
  "Returns md5sum for a message object of type 'Heading"
  "908b85f3e12fe5f8bf9abe03aeb2ef3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Heading>)))
  "Returns full string definition for message of type '<Heading>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/NavSatStatus status~%float64 data~%float64 std_dev~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Heading)))
  "Returns full string definition for message of type 'Heading"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/NavSatStatus status~%float64 data~%float64 std_dev~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Heading>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Heading>))
  "Converts a ROS message object to a list"
  (cl:list 'Heading
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':data (data msg))
    (cl:cons ':std_dev (std_dev msg))
))
