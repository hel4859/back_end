; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude CntAndLink.msg.html

(cl:defclass <CntAndLink> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Cnt
    :reader Cnt
    :initarg :Cnt
    :type cl:integer
    :initform 0)
   (Link
    :reader Link
    :initarg :Link
    :type cl:integer
    :initform 0))
)

(cl:defclass CntAndLink (<CntAndLink>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CntAndLink>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CntAndLink)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<CntAndLink> is deprecated: use can_msgs-msg:CntAndLink instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CntAndLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Cnt-val :lambda-list '(m))
(cl:defmethod Cnt-val ((m <CntAndLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Cnt-val is deprecated.  Use can_msgs-msg:Cnt instead.")
  (Cnt m))

(cl:ensure-generic-function 'Link-val :lambda-list '(m))
(cl:defmethod Link-val ((m <CntAndLink>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:Link-val is deprecated.  Use can_msgs-msg:Link instead.")
  (Link m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CntAndLink>) ostream)
  "Serializes a message object of type '<CntAndLink>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Cnt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Link)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CntAndLink>) istream)
  "Deserializes a message object of type '<CntAndLink>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
      (cl:setf (cl:slot-value msg 'Link) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CntAndLink>)))
  "Returns string type for a message object of type '<CntAndLink>"
  "can_msgs/CntAndLink")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CntAndLink)))
  "Returns string type for a message object of type 'CntAndLink"
  "can_msgs/CntAndLink")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CntAndLink>)))
  "Returns md5sum for a message object of type '<CntAndLink>"
  "37aa11307b77217270fe377adae959f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CntAndLink)))
  "Returns md5sum for a message object of type 'CntAndLink"
  "37aa11307b77217270fe377adae959f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CntAndLink>)))
  "Returns full string definition for message of type '<CntAndLink>"
  (cl:format cl:nil "Header header~%int32   Cnt~%int32   Link~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CntAndLink)))
  "Returns full string definition for message of type 'CntAndLink"
  (cl:format cl:nil "Header header~%int32   Cnt~%int32   Link~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CntAndLink>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CntAndLink>))
  "Converts a ROS message object to a list"
  (cl:list 'CntAndLink
    (cl:cons ':header (header msg))
    (cl:cons ':Cnt (Cnt msg))
    (cl:cons ':Link (Link msg))
))
