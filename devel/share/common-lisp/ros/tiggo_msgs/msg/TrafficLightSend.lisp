; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude TrafficLightSend.msg.html

(cl:defclass <TrafficLightSend> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_stop
    :reader left_stop
    :initarg :left_stop
    :type cl:boolean
    :initform cl:nil)
   (front_stop
    :reader front_stop
    :initarg :front_stop
    :type cl:boolean
    :initform cl:nil)
   (right_stop
    :reader right_stop
    :initarg :right_stop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrafficLightSend (<TrafficLightSend>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightSend>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightSend)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<TrafficLightSend> is deprecated: use tiggo_msgs-msg:TrafficLightSend instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficLightSend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:header-val is deprecated.  Use tiggo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_stop-val :lambda-list '(m))
(cl:defmethod left_stop-val ((m <TrafficLightSend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:left_stop-val is deprecated.  Use tiggo_msgs-msg:left_stop instead.")
  (left_stop m))

(cl:ensure-generic-function 'front_stop-val :lambda-list '(m))
(cl:defmethod front_stop-val ((m <TrafficLightSend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:front_stop-val is deprecated.  Use tiggo_msgs-msg:front_stop instead.")
  (front_stop m))

(cl:ensure-generic-function 'right_stop-val :lambda-list '(m))
(cl:defmethod right_stop-val ((m <TrafficLightSend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:right_stop-val is deprecated.  Use tiggo_msgs-msg:right_stop instead.")
  (right_stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightSend>) ostream)
  "Serializes a message object of type '<TrafficLightSend>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_stop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightSend>) istream)
  "Deserializes a message object of type '<TrafficLightSend>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'left_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_stop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightSend>)))
  "Returns string type for a message object of type '<TrafficLightSend>"
  "tiggo_msgs/TrafficLightSend")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightSend)))
  "Returns string type for a message object of type 'TrafficLightSend"
  "tiggo_msgs/TrafficLightSend")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightSend>)))
  "Returns md5sum for a message object of type '<TrafficLightSend>"
  "e8617fed90f265fe8694e76c5b1f30b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightSend)))
  "Returns md5sum for a message object of type 'TrafficLightSend"
  "e8617fed90f265fe8694e76c5b1f30b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightSend>)))
  "Returns full string definition for message of type '<TrafficLightSend>"
  (cl:format cl:nil "Header header~%bool left_stop~%bool front_stop~%bool right_stop~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightSend)))
  "Returns full string definition for message of type 'TrafficLightSend"
  (cl:format cl:nil "Header header~%bool left_stop~%bool front_stop~%bool right_stop~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightSend>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightSend>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightSend
    (cl:cons ':header (header msg))
    (cl:cons ':left_stop (left_stop msg))
    (cl:cons ':front_stop (front_stop msg))
    (cl:cons ':right_stop (right_stop msg))
))
