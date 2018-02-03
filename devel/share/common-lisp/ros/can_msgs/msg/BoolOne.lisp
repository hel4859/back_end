; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude BoolOne.msg.html

(cl:defclass <BoolOne> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (A_Bool
    :reader A_Bool
    :initarg :A_Bool
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BoolOne (<BoolOne>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoolOne>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoolOne)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<BoolOne> is deprecated: use can_msgs-msg:BoolOne instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BoolOne>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'A_Bool-val :lambda-list '(m))
(cl:defmethod A_Bool-val ((m <BoolOne>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:A_Bool-val is deprecated.  Use can_msgs-msg:A_Bool instead.")
  (A_Bool m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoolOne>) ostream)
  "Serializes a message object of type '<BoolOne>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'A_Bool) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoolOne>) istream)
  "Deserializes a message object of type '<BoolOne>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'A_Bool) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoolOne>)))
  "Returns string type for a message object of type '<BoolOne>"
  "can_msgs/BoolOne")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolOne)))
  "Returns string type for a message object of type 'BoolOne"
  "can_msgs/BoolOne")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoolOne>)))
  "Returns md5sum for a message object of type '<BoolOne>"
  "ada460eaac71c82b1e1c157dbb7aef03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoolOne)))
  "Returns md5sum for a message object of type 'BoolOne"
  "ada460eaac71c82b1e1c157dbb7aef03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoolOne>)))
  "Returns full string definition for message of type '<BoolOne>"
  (cl:format cl:nil "Header header~%bool    A_Bool~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoolOne)))
  "Returns full string definition for message of type 'BoolOne"
  (cl:format cl:nil "Header header~%bool    A_Bool~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoolOne>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoolOne>))
  "Converts a ROS message object to a list"
  (cl:list 'BoolOne
    (cl:cons ':header (header msg))
    (cl:cons ':A_Bool (A_Bool msg))
))
