; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude MagDataAndFitResult.msg.html

(cl:defclass <MagDataAndFitResult> (roslisp-msg-protocol:ros-message)
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
   (MagnetData
    :reader MagnetData
    :initarg :MagnetData
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
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
   (gauss_k
    :reader gauss_k
    :initarg :gauss_k
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
    :initform 0.0)
   (frame_variance
    :reader frame_variance
    :initarg :frame_variance
    :type cl:float
    :initform 0.0)
   (MagnetCounterDebug
    :reader MagnetCounterDebug
    :initarg :MagnetCounterDebug
    :type cl:integer
    :initform 0)
   (MagnetCounterTrigger
    :reader MagnetCounterTrigger
    :initarg :MagnetCounterTrigger
    :type cl:fixnum
    :initform 0)
   (PolarityCode
    :reader PolarityCode
    :initarg :PolarityCode
    :type cl:integer
    :initform 0)
   (MagnetPolarity
    :reader MagnetPolarity
    :initarg :MagnetPolarity
    :type cl:integer
    :initform 0))
)

(cl:defclass MagDataAndFitResult (<MagDataAndFitResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagDataAndFitResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagDataAndFitResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<MagDataAndFitResult> is deprecated: use can_msgs-msg:MagDataAndFitResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TimeOfIssue-val :lambda-list '(m))
(cl:defmethod TimeOfIssue-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:TimeOfIssue-val is deprecated.  Use can_msgs-msg:TimeOfIssue instead.")
  (TimeOfIssue m))

(cl:ensure-generic-function 'MagnetData-val :lambda-list '(m))
(cl:defmethod MagnetData-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagnetData-val is deprecated.  Use can_msgs-msg:MagnetData instead.")
  (MagnetData m))

(cl:ensure-generic-function 'MagOffsetFromMiddle-val :lambda-list '(m))
(cl:defmethod MagOffsetFromMiddle-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagOffsetFromMiddle-val is deprecated.  Use can_msgs-msg:MagOffsetFromMiddle instead.")
  (MagOffsetFromMiddle m))

(cl:ensure-generic-function 'fit_variance-val :lambda-list '(m))
(cl:defmethod fit_variance-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:fit_variance-val is deprecated.  Use can_msgs-msg:fit_variance instead.")
  (fit_variance m))

(cl:ensure-generic-function 'gauss_k-val :lambda-list '(m))
(cl:defmethod gauss_k-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:gauss_k-val is deprecated.  Use can_msgs-msg:gauss_k instead.")
  (gauss_k m))

(cl:ensure-generic-function 'RMS_error-val :lambda-list '(m))
(cl:defmethod RMS_error-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:RMS_error-val is deprecated.  Use can_msgs-msg:RMS_error instead.")
  (RMS_error m))

(cl:ensure-generic-function 'Mileage-val :lambda-list '(m))
(cl:defmethod Mileage-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Mileage-val is deprecated.  Use can_msgs-msg:Mileage instead.")
  (Mileage m))

(cl:ensure-generic-function 'frame_variance-val :lambda-list '(m))
(cl:defmethod frame_variance-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:frame_variance-val is deprecated.  Use can_msgs-msg:frame_variance instead.")
  (frame_variance m))

(cl:ensure-generic-function 'MagnetCounterDebug-val :lambda-list '(m))
(cl:defmethod MagnetCounterDebug-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagnetCounterDebug-val is deprecated.  Use can_msgs-msg:MagnetCounterDebug instead.")
  (MagnetCounterDebug m))

(cl:ensure-generic-function 'MagnetCounterTrigger-val :lambda-list '(m))
(cl:defmethod MagnetCounterTrigger-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagnetCounterTrigger-val is deprecated.  Use can_msgs-msg:MagnetCounterTrigger instead.")
  (MagnetCounterTrigger m))

(cl:ensure-generic-function 'PolarityCode-val :lambda-list '(m))
(cl:defmethod PolarityCode-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:PolarityCode-val is deprecated.  Use can_msgs-msg:PolarityCode instead.")
  (PolarityCode m))

(cl:ensure-generic-function 'MagnetPolarity-val :lambda-list '(m))
(cl:defmethod MagnetPolarity-val ((m <MagDataAndFitResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagnetPolarity-val is deprecated.  Use can_msgs-msg:MagnetPolarity instead.")
  (MagnetPolarity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagDataAndFitResult>) ostream)
  "Serializes a message object of type '<MagDataAndFitResult>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'MagnetData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'MagnetData))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gauss_k))))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frame_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MagnetCounterDebug)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'MagnetCounterDebug)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'MagnetCounterDebug)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'MagnetCounterDebug)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'MagnetCounterTrigger)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PolarityCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PolarityCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'PolarityCode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'PolarityCode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'MagnetPolarity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagDataAndFitResult>) istream)
  "Deserializes a message object of type '<MagDataAndFitResult>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'MagnetData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'MagnetData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
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
    (cl:setf (cl:slot-value msg 'gauss_k) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frame_variance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'MagnetCounterDebug)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'MagnetCounterDebug)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'MagnetCounterDebug)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'MagnetCounterDebug)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'MagnetCounterTrigger) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PolarityCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PolarityCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'PolarityCode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'PolarityCode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'MagnetPolarity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagDataAndFitResult>)))
  "Returns string type for a message object of type '<MagDataAndFitResult>"
  "can_msgs/MagDataAndFitResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagDataAndFitResult)))
  "Returns string type for a message object of type 'MagDataAndFitResult"
  "can_msgs/MagDataAndFitResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagDataAndFitResult>)))
  "Returns md5sum for a message object of type '<MagDataAndFitResult>"
  "d316795fd42d0d5785fda2dad9fbdd20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagDataAndFitResult)))
  "Returns md5sum for a message object of type 'MagDataAndFitResult"
  "d316795fd42d0d5785fda2dad9fbdd20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagDataAndFitResult>)))
  "Returns full string definition for message of type '<MagDataAndFitResult>"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%float32[] MagnetData~%float32 MagOffsetFromMiddle~%float32 fit_variance~%float32 gauss_k~%float32 RMS_error~%float32 Mileage~%float32 frame_variance~%uint32  MagnetCounterDebug~%int8 MagnetCounterTrigger~%uint32 PolarityCode~%int32   MagnetPolarity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagDataAndFitResult)))
  "Returns full string definition for message of type 'MagDataAndFitResult"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%float32[] MagnetData~%float32 MagOffsetFromMiddle~%float32 fit_variance~%float32 gauss_k~%float32 RMS_error~%float32 Mileage~%float32 frame_variance~%uint32  MagnetCounterDebug~%int8 MagnetCounterTrigger~%uint32 PolarityCode~%int32   MagnetPolarity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagDataAndFitResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'MagnetData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     4
     4
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagDataAndFitResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MagDataAndFitResult
    (cl:cons ':header (header msg))
    (cl:cons ':TimeOfIssue (TimeOfIssue msg))
    (cl:cons ':MagnetData (MagnetData msg))
    (cl:cons ':MagOffsetFromMiddle (MagOffsetFromMiddle msg))
    (cl:cons ':fit_variance (fit_variance msg))
    (cl:cons ':gauss_k (gauss_k msg))
    (cl:cons ':RMS_error (RMS_error msg))
    (cl:cons ':Mileage (Mileage msg))
    (cl:cons ':frame_variance (frame_variance msg))
    (cl:cons ':MagnetCounterDebug (MagnetCounterDebug msg))
    (cl:cons ':MagnetCounterTrigger (MagnetCounterTrigger msg))
    (cl:cons ':PolarityCode (PolarityCode msg))
    (cl:cons ':MagnetPolarity (MagnetPolarity msg))
))
