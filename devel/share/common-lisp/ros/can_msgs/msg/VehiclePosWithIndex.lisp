; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude VehiclePosWithIndex.msg.html

(cl:defclass <VehiclePosWithIndex> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (TimeOfIssue
    :reader TimeOfIssue
    :initarg :TimeOfIssue
    :type cl:real
    :initform 0)
   (Index
    :reader Index
    :initarg :Index
    :type cl:integer
    :initform 0)
   (Theta
    :reader Theta
    :initarg :Theta
    :type cl:float
    :initform 0.0)
   (X
    :reader X
    :initarg :X
    :type cl:float
    :initform 0.0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehiclePosWithIndex (<VehiclePosWithIndex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehiclePosWithIndex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehiclePosWithIndex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<VehiclePosWithIndex> is deprecated: use can_msgs-msg:VehiclePosWithIndex instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehiclePosWithIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TimeOfIssue-val :lambda-list '(m))
(cl:defmethod TimeOfIssue-val ((m <VehiclePosWithIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:TimeOfIssue-val is deprecated.  Use can_msgs-msg:TimeOfIssue instead.")
  (TimeOfIssue m))

(cl:ensure-generic-function 'Index-val :lambda-list '(m))
(cl:defmethod Index-val ((m <VehiclePosWithIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Index-val is deprecated.  Use can_msgs-msg:Index instead.")
  (Index m))

(cl:ensure-generic-function 'Theta-val :lambda-list '(m))
(cl:defmethod Theta-val ((m <VehiclePosWithIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Theta-val is deprecated.  Use can_msgs-msg:Theta instead.")
  (Theta m))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <VehiclePosWithIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:X-val is deprecated.  Use can_msgs-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <VehiclePosWithIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Y-val is deprecated.  Use can_msgs-msg:Y instead.")
  (Y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehiclePosWithIndex>) ostream)
  "Serializes a message object of type '<VehiclePosWithIndex>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'TimeOfIssue)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'TimeOfIssue) (cl:floor (cl:slot-value msg 'TimeOfIssue)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehiclePosWithIndex>) istream)
  "Deserializes a message object of type '<VehiclePosWithIndex>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TimeOfIssue) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehiclePosWithIndex>)))
  "Returns string type for a message object of type '<VehiclePosWithIndex>"
  "can_msgs/VehiclePosWithIndex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehiclePosWithIndex)))
  "Returns string type for a message object of type 'VehiclePosWithIndex"
  "can_msgs/VehiclePosWithIndex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehiclePosWithIndex>)))
  "Returns md5sum for a message object of type '<VehiclePosWithIndex>"
  "7a8a499e59e762d17bfe65ca406cf830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehiclePosWithIndex)))
  "Returns md5sum for a message object of type 'VehiclePosWithIndex"
  "7a8a499e59e762d17bfe65ca406cf830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehiclePosWithIndex>)))
  "Returns full string definition for message of type '<VehiclePosWithIndex>"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%int32   Index~%float32 Theta~%float32 X~%float32 Y~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehiclePosWithIndex)))
  "Returns full string definition for message of type 'VehiclePosWithIndex"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%int32   Index~%float32 Theta~%float32 X~%float32 Y~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehiclePosWithIndex>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehiclePosWithIndex>))
  "Converts a ROS message object to a list"
  (cl:list 'VehiclePosWithIndex
    (cl:cons ':header (header msg))
    (cl:cons ':TimeOfIssue (TimeOfIssue msg))
    (cl:cons ':Index (Index msg))
    (cl:cons ':Theta (Theta msg))
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
))
