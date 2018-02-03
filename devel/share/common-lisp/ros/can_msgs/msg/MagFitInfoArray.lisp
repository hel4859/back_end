; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude MagFitInfoArray.msg.html

(cl:defclass <MagFitInfoArray> (roslisp-msg-protocol:ros-message)
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
   (MagnetPolarity
    :reader MagnetPolarity
    :initarg :MagnetPolarity
    :type cl:integer
    :initform 0)
   (frame_variance
    :reader frame_variance
    :initarg :frame_variance
    :type cl:float
    :initform 0.0)
   (PolarityCode
    :reader PolarityCode
    :initarg :PolarityCode
    :type cl:integer
    :initform 0)
   (MagOffsetFromMiddle
    :reader MagOffsetFromMiddle
    :initarg :MagOffsetFromMiddle
    :type cl:float
    :initform 0.0)
   (fit_variance
    :reader fit_variance
    :initarg :fit_variance
    :type cl:float
    :initform 0.0)
   (RMS_error
    :reader RMS_error
    :initarg :RMS_error
    :type cl:float
    :initform 0.0)
   (Mileage
    :reader Mileage
    :initarg :Mileage
    :type cl:float
    :initform 0.0))
)

(cl:defclass MagFitInfoArray (<MagFitInfoArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagFitInfoArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagFitInfoArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<MagFitInfoArray> is deprecated: use can_msgs-msg:MagFitInfoArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TimeOfIssue-val :lambda-list '(m))
(cl:defmethod TimeOfIssue-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:TimeOfIssue-val is deprecated.  Use can_msgs-msg:TimeOfIssue instead.")
  (TimeOfIssue m))

(cl:ensure-generic-function 'MagnetPolarity-val :lambda-list '(m))
(cl:defmethod MagnetPolarity-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagnetPolarity-val is deprecated.  Use can_msgs-msg:MagnetPolarity instead.")
  (MagnetPolarity m))

(cl:ensure-generic-function 'frame_variance-val :lambda-list '(m))
(cl:defmethod frame_variance-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:frame_variance-val is deprecated.  Use can_msgs-msg:frame_variance instead.")
  (frame_variance m))

(cl:ensure-generic-function 'PolarityCode-val :lambda-list '(m))
(cl:defmethod PolarityCode-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:PolarityCode-val is deprecated.  Use can_msgs-msg:PolarityCode instead.")
  (PolarityCode m))

(cl:ensure-generic-function 'MagOffsetFromMiddle-val :lambda-list '(m))
(cl:defmethod MagOffsetFromMiddle-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagOffsetFromMiddle-val is deprecated.  Use can_msgs-msg:MagOffsetFromMiddle instead.")
  (MagOffsetFromMiddle m))

(cl:ensure-generic-function 'fit_variance-val :lambda-list '(m))
(cl:defmethod fit_variance-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:fit_variance-val is deprecated.  Use can_msgs-msg:fit_variance instead.")
  (fit_variance m))

(cl:ensure-generic-function 'RMS_error-val :lambda-list '(m))
(cl:defmethod RMS_error-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:RMS_error-val is deprecated.  Use can_msgs-msg:RMS_error instead.")
  (RMS_error m))

(cl:ensure-generic-function 'Mileage-val :lambda-list '(m))
(cl:defmethod Mileage-val ((m <MagFitInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Mileage-val is deprecated.  Use can_msgs-msg:Mileage instead.")
  (Mileage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagFitInfoArray>) ostream)
  "Serializes a message object of type '<MagFitInfoArray>"
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
  (cl:let* ((signed (cl:slot-value msg 'MagnetPolarity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frame_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PolarityCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PolarityCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'PolarityCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'PolarityCode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'MagOffsetFromMiddle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fit_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RMS_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagFitInfoArray>) istream)
  "Deserializes a message object of type '<MagFitInfoArray>"
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
      (cl:setf (cl:slot-value msg 'MagnetPolarity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frame_variance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PolarityCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PolarityCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'PolarityCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'PolarityCode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'MagOffsetFromMiddle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fit_variance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RMS_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Mileage) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagFitInfoArray>)))
  "Returns string type for a message object of type '<MagFitInfoArray>"
  "can_msgs/MagFitInfoArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagFitInfoArray)))
  "Returns string type for a message object of type 'MagFitInfoArray"
  "can_msgs/MagFitInfoArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagFitInfoArray>)))
  "Returns md5sum for a message object of type '<MagFitInfoArray>"
  "ceab1ab410175fbe7c0e5f393ad64bd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagFitInfoArray)))
  "Returns md5sum for a message object of type 'MagFitInfoArray"
  "ceab1ab410175fbe7c0e5f393ad64bd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagFitInfoArray>)))
  "Returns full string definition for message of type '<MagFitInfoArray>"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%int32 MagnetPolarity~%float32 frame_variance~%uint32 PolarityCode~%float32 MagOffsetFromMiddle~%float32 fit_variance~%float32 RMS_error~%float32 Mileage~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagFitInfoArray)))
  "Returns full string definition for message of type 'MagFitInfoArray"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%int32 MagnetPolarity~%float32 frame_variance~%uint32 PolarityCode~%float32 MagOffsetFromMiddle~%float32 fit_variance~%float32 RMS_error~%float32 Mileage~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagFitInfoArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagFitInfoArray>))
  "Converts a ROS message object to a list"
  (cl:list 'MagFitInfoArray
    (cl:cons ':header (header msg))
    (cl:cons ':TimeOfIssue (TimeOfIssue msg))
    (cl:cons ':MagnetPolarity (MagnetPolarity msg))
    (cl:cons ':frame_variance (frame_variance msg))
    (cl:cons ':PolarityCode (PolarityCode msg))
    (cl:cons ':MagOffsetFromMiddle (MagOffsetFromMiddle msg))
    (cl:cons ':fit_variance (fit_variance msg))
    (cl:cons ':RMS_error (RMS_error msg))
    (cl:cons ':Mileage (Mileage msg))
))
