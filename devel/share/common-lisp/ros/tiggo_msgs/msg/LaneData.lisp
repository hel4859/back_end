; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude LaneData.msg.html

(cl:defclass <LaneData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lane_flag
    :reader lane_flag
    :initarg :lane_flag
    :type cl:fixnum
    :initform 0)
   (lane_data
    :reader lane_data
    :initarg :lane_data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 16 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass LaneData (<LaneData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<LaneData> is deprecated: use tiggo_msgs-msg:LaneData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:header-val is deprecated.  Use tiggo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lane_flag-val :lambda-list '(m))
(cl:defmethod lane_flag-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:lane_flag-val is deprecated.  Use tiggo_msgs-msg:lane_flag instead.")
  (lane_flag m))

(cl:ensure-generic-function 'lane_data-val :lambda-list '(m))
(cl:defmethod lane_data-val ((m <LaneData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:lane_data-val is deprecated.  Use tiggo_msgs-msg:lane_data instead.")
  (lane_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneData>) ostream)
  "Serializes a message object of type '<LaneData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lane_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'lane_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneData>) istream)
  "Deserializes a message object of type '<LaneData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_flag) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:setf (cl:slot-value msg 'lane_data) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'lane_data)))
    (cl:dotimes (i 16)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneData>)))
  "Returns string type for a message object of type '<LaneData>"
  "tiggo_msgs/LaneData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneData)))
  "Returns string type for a message object of type 'LaneData"
  "tiggo_msgs/LaneData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneData>)))
  "Returns md5sum for a message object of type '<LaneData>"
  "ee865f290c7ee859a1180551831c018b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneData)))
  "Returns md5sum for a message object of type 'LaneData"
  "ee865f290c7ee859a1180551831c018b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneData>)))
  "Returns full string definition for message of type '<LaneData>"
  (cl:format cl:nil "std_msgs/Header header~%int16 lane_flag~%int32[16] lane_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneData)))
  "Returns full string definition for message of type 'LaneData"
  (cl:format cl:nil "std_msgs/Header header~%int16 lane_flag~%int32[16] lane_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneData>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneData
    (cl:cons ':header (header msg))
    (cl:cons ':lane_flag (lane_flag msg))
    (cl:cons ':lane_data (lane_data msg))
))
