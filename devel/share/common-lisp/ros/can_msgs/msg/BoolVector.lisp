; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude BoolVector.msg.html

(cl:defclass <BoolVector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bool_vector
    :reader bool_vector
    :initarg :bool_vector
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass BoolVector (<BoolVector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoolVector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoolVector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<BoolVector> is deprecated: use can_msgs-msg:BoolVector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BoolVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bool_vector-val :lambda-list '(m))
(cl:defmethod bool_vector-val ((m <BoolVector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:bool_vector-val is deprecated.  Use can_msgs-msg:bool_vector instead.")
  (bool_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoolVector>) ostream)
  "Serializes a message object of type '<BoolVector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bool_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'bool_vector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoolVector>) istream)
  "Deserializes a message object of type '<BoolVector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bool_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bool_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoolVector>)))
  "Returns string type for a message object of type '<BoolVector>"
  "can_msgs/BoolVector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolVector)))
  "Returns string type for a message object of type 'BoolVector"
  "can_msgs/BoolVector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoolVector>)))
  "Returns md5sum for a message object of type '<BoolVector>"
  "5c969cfde8134bfddfdb800d3c138ef9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoolVector)))
  "Returns md5sum for a message object of type 'BoolVector"
  "5c969cfde8134bfddfdb800d3c138ef9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoolVector>)))
  "Returns full string definition for message of type '<BoolVector>"
  (cl:format cl:nil "Header header~%bool[]  bool_vector~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoolVector)))
  "Returns full string definition for message of type 'BoolVector"
  (cl:format cl:nil "Header header~%bool[]  bool_vector~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoolVector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bool_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoolVector>))
  "Converts a ROS message object to a list"
  (cl:list 'BoolVector
    (cl:cons ':header (header msg))
    (cl:cons ':bool_vector (bool_vector msg))
))
