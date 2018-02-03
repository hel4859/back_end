; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude MagRuler32Data.msg.html

(cl:defclass <MagRuler32Data> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (MagRulerData
    :reader MagRulerData
    :initarg :MagRulerData
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MagRuler32Data (<MagRuler32Data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MagRuler32Data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MagRuler32Data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<MagRuler32Data> is deprecated: use can_msgs-msg:MagRuler32Data instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MagRuler32Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'MagRulerData-val :lambda-list '(m))
(cl:defmethod MagRulerData-val ((m <MagRuler32Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:MagRulerData-val is deprecated.  Use can_msgs-msg:MagRulerData instead.")
  (MagRulerData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MagRuler32Data>) ostream)
  "Serializes a message object of type '<MagRuler32Data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'MagRulerData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'MagRulerData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MagRuler32Data>) istream)
  "Deserializes a message object of type '<MagRuler32Data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'MagRulerData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'MagRulerData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MagRuler32Data>)))
  "Returns string type for a message object of type '<MagRuler32Data>"
  "can_msgs/MagRuler32Data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MagRuler32Data)))
  "Returns string type for a message object of type 'MagRuler32Data"
  "can_msgs/MagRuler32Data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MagRuler32Data>)))
  "Returns md5sum for a message object of type '<MagRuler32Data>"
  "c00f87ffaa1e5c5e9bcb9aeddfbf47b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MagRuler32Data)))
  "Returns md5sum for a message object of type 'MagRuler32Data"
  "c00f87ffaa1e5c5e9bcb9aeddfbf47b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MagRuler32Data>)))
  "Returns full string definition for message of type '<MagRuler32Data>"
  (cl:format cl:nil "Header header~%float32[] MagRulerData~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MagRuler32Data)))
  "Returns full string definition for message of type 'MagRuler32Data"
  (cl:format cl:nil "Header header~%float32[] MagRulerData~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MagRuler32Data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'MagRulerData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MagRuler32Data>))
  "Converts a ROS message object to a list"
  (cl:list 'MagRuler32Data
    (cl:cons ':header (header msg))
    (cl:cons ':MagRulerData (MagRulerData msg))
))
