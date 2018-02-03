; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude Float32Vector.msg.html

(cl:defclass <Float32Vector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (float_vector
    :reader float_vector
    :initarg :float_vector
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Float32Vector (<Float32Vector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float32Vector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float32Vector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<Float32Vector> is deprecated: use can_msgs-msg:Float32Vector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Float32Vector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'float_vector-val :lambda-list '(m))
(cl:defmethod float_vector-val ((m <Float32Vector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:float_vector-val is deprecated.  Use can_msgs-msg:float_vector instead.")
  (float_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float32Vector>) ostream)
  "Serializes a message object of type '<Float32Vector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'float_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'float_vector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float32Vector>) istream)
  "Deserializes a message object of type '<Float32Vector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'float_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'float_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float32Vector>)))
  "Returns string type for a message object of type '<Float32Vector>"
  "can_msgs/Float32Vector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float32Vector)))
  "Returns string type for a message object of type 'Float32Vector"
  "can_msgs/Float32Vector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float32Vector>)))
  "Returns md5sum for a message object of type '<Float32Vector>"
  "297cc95c9d35352b6a6c1d6a427c5b98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float32Vector)))
  "Returns md5sum for a message object of type 'Float32Vector"
  "297cc95c9d35352b6a6c1d6a427c5b98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float32Vector>)))
  "Returns full string definition for message of type '<Float32Vector>"
  (cl:format cl:nil "Header header~%~%float32[] float_vector~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float32Vector)))
  "Returns full string definition for message of type 'Float32Vector"
  (cl:format cl:nil "Header header~%~%float32[] float_vector~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float32Vector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'float_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float32Vector>))
  "Converts a ROS message object to a list"
  (cl:list 'Float32Vector
    (cl:cons ':header (header msg))
    (cl:cons ':float_vector (float_vector msg))
))
