; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude CanNodeStatus.msg.html

(cl:defclass <CanNodeStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (CanNodeNum
    :reader CanNodeNum
    :initarg :CanNodeNum
    :type cl:integer
    :initform 0)
   (NodeStatus
    :reader NodeStatus
    :initarg :NodeStatus
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CanNodeStatus (<CanNodeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanNodeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanNodeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<CanNodeStatus> is deprecated: use can_msgs-msg:CanNodeStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CanNodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'CanNodeNum-val :lambda-list '(m))
(cl:defmethod CanNodeNum-val ((m <CanNodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:CanNodeNum-val is deprecated.  Use can_msgs-msg:CanNodeNum instead.")
  (CanNodeNum m))

(cl:ensure-generic-function 'NodeStatus-val :lambda-list '(m))
(cl:defmethod NodeStatus-val ((m <CanNodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:NodeStatus-val is deprecated.  Use can_msgs-msg:NodeStatus instead.")
  (NodeStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanNodeStatus>) ostream)
  "Serializes a message object of type '<CanNodeStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CanNodeNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CanNodeNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'CanNodeNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'CanNodeNum)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'NodeStatus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'NodeStatus))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanNodeStatus>) istream)
  "Deserializes a message object of type '<CanNodeStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'CanNodeNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'CanNodeNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'CanNodeNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'CanNodeNum)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'NodeStatus) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'NodeStatus)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanNodeStatus>)))
  "Returns string type for a message object of type '<CanNodeStatus>"
  "can_msgs/CanNodeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanNodeStatus)))
  "Returns string type for a message object of type 'CanNodeStatus"
  "can_msgs/CanNodeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanNodeStatus>)))
  "Returns md5sum for a message object of type '<CanNodeStatus>"
  "7684af15e47a9035f109357d8085a305")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanNodeStatus)))
  "Returns md5sum for a message object of type 'CanNodeStatus"
  "7684af15e47a9035f109357d8085a305")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanNodeStatus>)))
  "Returns full string definition for message of type '<CanNodeStatus>"
  (cl:format cl:nil "Header header~%uint32 CanNodeNum~%uint8[] NodeStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanNodeStatus)))
  "Returns full string definition for message of type 'CanNodeStatus"
  (cl:format cl:nil "Header header~%uint32 CanNodeNum~%uint8[] NodeStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanNodeStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'NodeStatus) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanNodeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CanNodeStatus
    (cl:cons ':header (header msg))
    (cl:cons ':CanNodeNum (CanNodeNum msg))
    (cl:cons ':NodeStatus (NodeStatus msg))
))
