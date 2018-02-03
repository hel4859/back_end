; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude InputBitsFromHensmor.msg.html

(cl:defclass <InputBitsFromHensmor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (NormalBits
    :reader NormalBits
    :initarg :NormalBits
    :type cl:integer
    :initform 0)
   (LidarObstacleBits
    :reader LidarObstacleBits
    :initarg :LidarObstacleBits
    :type cl:integer
    :initform 0))
)

(cl:defclass InputBitsFromHensmor (<InputBitsFromHensmor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InputBitsFromHensmor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InputBitsFromHensmor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<InputBitsFromHensmor> is deprecated: use can_msgs-msg:InputBitsFromHensmor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InputBitsFromHensmor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'NormalBits-val :lambda-list '(m))
(cl:defmethod NormalBits-val ((m <InputBitsFromHensmor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:NormalBits-val is deprecated.  Use can_msgs-msg:NormalBits instead.")
  (NormalBits m))

(cl:ensure-generic-function 'LidarObstacleBits-val :lambda-list '(m))
(cl:defmethod LidarObstacleBits-val ((m <InputBitsFromHensmor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:LidarObstacleBits-val is deprecated.  Use can_msgs-msg:LidarObstacleBits instead.")
  (LidarObstacleBits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InputBitsFromHensmor>) ostream)
  "Serializes a message object of type '<InputBitsFromHensmor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'NormalBits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'NormalBits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'NormalBits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'NormalBits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarObstacleBits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LidarObstacleBits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LidarObstacleBits)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LidarObstacleBits)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InputBitsFromHensmor>) istream)
  "Deserializes a message object of type '<InputBitsFromHensmor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'NormalBits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'NormalBits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'NormalBits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'NormalBits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarObstacleBits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LidarObstacleBits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LidarObstacleBits)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LidarObstacleBits)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InputBitsFromHensmor>)))
  "Returns string type for a message object of type '<InputBitsFromHensmor>"
  "can_msgs/InputBitsFromHensmor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InputBitsFromHensmor)))
  "Returns string type for a message object of type 'InputBitsFromHensmor"
  "can_msgs/InputBitsFromHensmor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InputBitsFromHensmor>)))
  "Returns md5sum for a message object of type '<InputBitsFromHensmor>"
  "e8dd3d6f8b45f620808235d5a92a8dc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InputBitsFromHensmor)))
  "Returns md5sum for a message object of type 'InputBitsFromHensmor"
  "e8dd3d6f8b45f620808235d5a92a8dc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InputBitsFromHensmor>)))
  "Returns full string definition for message of type '<InputBitsFromHensmor>"
  (cl:format cl:nil "Header header~%uint32 NormalBits~%uint32 LidarObstacleBits~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InputBitsFromHensmor)))
  "Returns full string definition for message of type 'InputBitsFromHensmor"
  (cl:format cl:nil "Header header~%uint32 NormalBits~%uint32 LidarObstacleBits~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InputBitsFromHensmor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InputBitsFromHensmor>))
  "Converts a ROS message object to a list"
  (cl:list 'InputBitsFromHensmor
    (cl:cons ':header (header msg))
    (cl:cons ':NormalBits (NormalBits msg))
    (cl:cons ':LidarObstacleBits (LidarObstacleBits msg))
))
