; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude StationStopCmd.msg.html

(cl:defclass <StationStopCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (StopCmd
    :reader StopCmd
    :initarg :StopCmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StationStopCmd (<StationStopCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StationStopCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StationStopCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<StationStopCmd> is deprecated: use can_msgs-msg:StationStopCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StationStopCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'StopCmd-val :lambda-list '(m))
(cl:defmethod StopCmd-val ((m <StationStopCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:StopCmd-val is deprecated.  Use can_msgs-msg:StopCmd instead.")
  (StopCmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StationStopCmd>) ostream)
  "Serializes a message object of type '<StationStopCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StopCmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StationStopCmd>) istream)
  "Deserializes a message object of type '<StationStopCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StopCmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StationStopCmd>)))
  "Returns string type for a message object of type '<StationStopCmd>"
  "can_msgs/StationStopCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StationStopCmd)))
  "Returns string type for a message object of type 'StationStopCmd"
  "can_msgs/StationStopCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StationStopCmd>)))
  "Returns md5sum for a message object of type '<StationStopCmd>"
  "ce60e85826fe73923850cf63b640f8b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StationStopCmd)))
  "Returns md5sum for a message object of type 'StationStopCmd"
  "ce60e85826fe73923850cf63b640f8b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StationStopCmd>)))
  "Returns full string definition for message of type '<StationStopCmd>"
  (cl:format cl:nil "Header header~%uint8 StopCmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StationStopCmd)))
  "Returns full string definition for message of type 'StationStopCmd"
  (cl:format cl:nil "Header header~%uint8 StopCmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StationStopCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StationStopCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'StationStopCmd
    (cl:cons ':header (header msg))
    (cl:cons ':StopCmd (StopCmd msg))
))
