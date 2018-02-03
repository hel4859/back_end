; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude MagGPSInfo4Fusion.msg.html

(cl:defclass <MagGPSInfo4Fusion> (roslisp-msg-protocol:ros-message)
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
   (MagOffsetFromMiddle
    :reader MagOffsetFromMiddle
    :initarg :MagOffsetFromMiddle
    :type cl:float
    :initform 0.0)
   (Cnt
    :reader Cnt
    :initarg :Cnt
    :type cl:integer
    :initform 0)
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (link_id
    :reader link_id
    :initarg :link_id
    :type cl:integer
    :initform 0)
   (ForceUpdate
    :reader ForceUpdate
    :initarg :ForceUpdate
    :type cl:integer
    :initform 0)
   (Polarity
    :reader Polarity
    :initarg :Polarity
    :type cl:integer
    :initform 0)
   (PolarityCode
    :reader PolarityCode
    :initarg :PolarityCode
    :type cl:integer
    :initform 0)
   (AdjMagnetArray
    :reader AdjMagnetArray
    :initarg :AdjMagnetArray
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MagGPSInfo4Fusion (<MagGPSInfo4Fusion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagGPSInfo4Fusion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagGPSInfo4Fusion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<MagGPSInfo4Fusion> is deprecated: use can_msgs-msg:MagGPSInfo4Fusion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TimeOfIssue-val :lambda-list '(m))
(cl:defmethod TimeOfIssue-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:TimeOfIssue-val is deprecated.  Use can_msgs-msg:TimeOfIssue instead.")
  (TimeOfIssue m))

(cl:ensure-generic-function 'MagOffsetFromMiddle-val :lambda-list '(m))
(cl:defmethod MagOffsetFromMiddle-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagOffsetFromMiddle-val is deprecated.  Use can_msgs-msg:MagOffsetFromMiddle instead.")
  (MagOffsetFromMiddle m))

(cl:ensure-generic-function 'Cnt-val :lambda-list '(m))
(cl:defmethod Cnt-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Cnt-val is deprecated.  Use can_msgs-msg:Cnt instead.")
  (Cnt m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:task_id-val is deprecated.  Use can_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'link_id-val :lambda-list '(m))
(cl:defmethod link_id-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:link_id-val is deprecated.  Use can_msgs-msg:link_id instead.")
  (link_id m))

(cl:ensure-generic-function 'ForceUpdate-val :lambda-list '(m))
(cl:defmethod ForceUpdate-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:ForceUpdate-val is deprecated.  Use can_msgs-msg:ForceUpdate instead.")
  (ForceUpdate m))

(cl:ensure-generic-function 'Polarity-val :lambda-list '(m))
(cl:defmethod Polarity-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Polarity-val is deprecated.  Use can_msgs-msg:Polarity instead.")
  (Polarity m))

(cl:ensure-generic-function 'PolarityCode-val :lambda-list '(m))
(cl:defmethod PolarityCode-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:PolarityCode-val is deprecated.  Use can_msgs-msg:PolarityCode instead.")
  (PolarityCode m))

(cl:ensure-generic-function 'AdjMagnetArray-val :lambda-list '(m))
(cl:defmethod AdjMagnetArray-val ((m <MagGPSInfo4Fusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:AdjMagnetArray-val is deprecated.  Use can_msgs-msg:AdjMagnetArray instead.")
  (AdjMagnetArray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagGPSInfo4Fusion>) ostream)
  "Serializes a message object of type '<MagGPSInfo4Fusion>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'MagOffsetFromMiddle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Cnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'link_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ForceUpdate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Polarity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'PolarityCode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'AdjMagnetArray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'AdjMagnetArray))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagGPSInfo4Fusion>) istream)
  "Deserializes a message object of type '<MagGPSInfo4Fusion>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'MagOffsetFromMiddle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Cnt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ForceUpdate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Polarity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'PolarityCode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'AdjMagnetArray) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'AdjMagnetArray)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagGPSInfo4Fusion>)))
  "Returns string type for a message object of type '<MagGPSInfo4Fusion>"
  "can_msgs/MagGPSInfo4Fusion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagGPSInfo4Fusion)))
  "Returns string type for a message object of type 'MagGPSInfo4Fusion"
  "can_msgs/MagGPSInfo4Fusion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagGPSInfo4Fusion>)))
  "Returns md5sum for a message object of type '<MagGPSInfo4Fusion>"
  "49e8bcc1ce79d983333e55c4b60b9ab1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagGPSInfo4Fusion)))
  "Returns md5sum for a message object of type 'MagGPSInfo4Fusion"
  "49e8bcc1ce79d983333e55c4b60b9ab1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagGPSInfo4Fusion>)))
  "Returns full string definition for message of type '<MagGPSInfo4Fusion>"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%float32 MagOffsetFromMiddle~%int32   Cnt~%int32   task_id~%int32   link_id~%int32   ForceUpdate~%int32   Polarity~%int32   PolarityCode~%~%float32[] AdjMagnetArray~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagGPSInfo4Fusion)))
  "Returns full string definition for message of type 'MagGPSInfo4Fusion"
  (cl:format cl:nil "Header header~%time TimeOfIssue~%~%float32 MagOffsetFromMiddle~%int32   Cnt~%int32   task_id~%int32   link_id~%int32   ForceUpdate~%int32   Polarity~%int32   PolarityCode~%~%float32[] AdjMagnetArray~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagGPSInfo4Fusion>))
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
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'AdjMagnetArray) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagGPSInfo4Fusion>))
  "Converts a ROS message object to a list"
  (cl:list 'MagGPSInfo4Fusion
    (cl:cons ':header (header msg))
    (cl:cons ':TimeOfIssue (TimeOfIssue msg))
    (cl:cons ':MagOffsetFromMiddle (MagOffsetFromMiddle msg))
    (cl:cons ':Cnt (Cnt msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':link_id (link_id msg))
    (cl:cons ':ForceUpdate (ForceUpdate msg))
    (cl:cons ':Polarity (Polarity msg))
    (cl:cons ':PolarityCode (PolarityCode msg))
    (cl:cons ':AdjMagnetArray (AdjMagnetArray msg))
))
