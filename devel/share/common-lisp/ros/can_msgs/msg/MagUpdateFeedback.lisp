; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude MagUpdateFeedback.msg.html

(cl:defclass <MagUpdateFeedback> (roslisp-msg-protocol:ros-message)
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
   (UpdatedCnt
    :reader UpdatedCnt
    :initarg :UpdatedCnt
    :type cl:integer
    :initform 0)
   (XuEKF_InitOK
    :reader XuEKF_InitOK
    :initarg :XuEKF_InitOK
    :type cl:integer
    :initform 0)
   (UpdatedMag_Index
    :reader UpdatedMag_Index
    :initarg :UpdatedMag_Index
    :type cl:integer
    :initform 0)
   (UpdatedMag_X
    :reader UpdatedMag_X
    :initarg :UpdatedMag_X
    :type cl:float
    :initform 0.0)
   (UpdatedMag_Y
    :reader UpdatedMag_Y
    :initarg :UpdatedMag_Y
    :type cl:float
    :initform 0.0))
)

(cl:defclass MagUpdateFeedback (<MagUpdateFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagUpdateFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagUpdateFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<MagUpdateFeedback> is deprecated: use can_msgs-msg:MagUpdateFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TimeOfIssue-val :lambda-list '(m))
(cl:defmethod TimeOfIssue-val ((m <MagUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:TimeOfIssue-val is deprecated.  Use can_msgs-msg:TimeOfIssue instead.")
  (TimeOfIssue m))

(cl:ensure-generic-function 'UpdatedCnt-val :lambda-list '(m))
(cl:defmethod UpdatedCnt-val ((m <MagUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:UpdatedCnt-val is deprecated.  Use can_msgs-msg:UpdatedCnt instead.")
  (UpdatedCnt m))

(cl:ensure-generic-function 'XuEKF_InitOK-val :lambda-list '(m))
(cl:defmethod XuEKF_InitOK-val ((m <MagUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:XuEKF_InitOK-val is deprecated.  Use can_msgs-msg:XuEKF_InitOK instead.")
  (XuEKF_InitOK m))

(cl:ensure-generic-function 'UpdatedMag_Index-val :lambda-list '(m))
(cl:defmethod UpdatedMag_Index-val ((m <MagUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:UpdatedMag_Index-val is deprecated.  Use can_msgs-msg:UpdatedMag_Index instead.")
  (UpdatedMag_Index m))

(cl:ensure-generic-function 'UpdatedMag_X-val :lambda-list '(m))
(cl:defmethod UpdatedMag_X-val ((m <MagUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:UpdatedMag_X-val is deprecated.  Use can_msgs-msg:UpdatedMag_X instead.")
  (UpdatedMag_X m))

(cl:ensure-generic-function 'UpdatedMag_Y-val :lambda-list '(m))
(cl:defmethod UpdatedMag_Y-val ((m <MagUpdateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:UpdatedMag_Y-val is deprecated.  Use can_msgs-msg:UpdatedMag_Y instead.")
  (UpdatedMag_Y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagUpdateFeedback>) ostream)
  "Serializes a message object of type '<MagUpdateFeedback>"
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
  (cl:let* ((signed (cl:slot-value msg 'UpdatedCnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'XuEKF_InitOK)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'UpdatedMag_Index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'UpdatedMag_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'UpdatedMag_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagUpdateFeedback>) istream)
  "Deserializes a message object of type '<MagUpdateFeedback>"
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
      (cl:setf (cl:slot-value msg 'UpdatedCnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'XuEKF_InitOK) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'UpdatedMag_Index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UpdatedMag_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UpdatedMag_Y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagUpdateFeedback>)))
  "Returns string type for a message object of type '<MagUpdateFeedback>"
  "can_msgs/MagUpdateFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagUpdateFeedback)))
  "Returns string type for a message object of type 'MagUpdateFeedback"
  "can_msgs/MagUpdateFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagUpdateFeedback>)))
  "Returns md5sum for a message object of type '<MagUpdateFeedback>"
  "3df0e682ba87d78bb14b950e9861807d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagUpdateFeedback)))
  "Returns md5sum for a message object of type 'MagUpdateFeedback"
  "3df0e682ba87d78bb14b950e9861807d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagUpdateFeedback>)))
  "Returns full string definition for message of type '<MagUpdateFeedback>"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%int32 UpdatedCnt~%int32 XuEKF_InitOK~%int32   UpdatedMag_Index~%float32 UpdatedMag_X~%float32 UpdatedMag_Y~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagUpdateFeedback)))
  "Returns full string definition for message of type 'MagUpdateFeedback"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%int32 UpdatedCnt~%int32 XuEKF_InitOK~%int32   UpdatedMag_Index~%float32 UpdatedMag_X~%float32 UpdatedMag_Y~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagUpdateFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagUpdateFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'MagUpdateFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':TimeOfIssue (TimeOfIssue msg))
    (cl:cons ':UpdatedCnt (UpdatedCnt msg))
    (cl:cons ':XuEKF_InitOK (XuEKF_InitOK msg))
    (cl:cons ':UpdatedMag_Index (UpdatedMag_Index msg))
    (cl:cons ':UpdatedMag_X (UpdatedMag_X msg))
    (cl:cons ':UpdatedMag_Y (UpdatedMag_Y msg))
))
