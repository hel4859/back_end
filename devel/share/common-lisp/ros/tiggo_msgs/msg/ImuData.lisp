; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude ImuData.msg.html

(cl:defclass <ImuData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (acc
    :reader acc
    :initarg :acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gyro
    :reader gyro
    :initarg :gyro
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpy
    :reader rpy
    :initarg :rpy
    :type tiggo_msgs-msg:Orientation
    :initform (cl:make-instance 'tiggo_msgs-msg:Orientation)))
)

(cl:defclass ImuData (<ImuData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<ImuData> is deprecated: use tiggo_msgs-msg:ImuData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:header-val is deprecated.  Use tiggo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <ImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:acc-val is deprecated.  Use tiggo_msgs-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <ImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:gyro-val is deprecated.  Use tiggo_msgs-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <ImuData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:rpy-val is deprecated.  Use tiggo_msgs-msg:rpy instead.")
  (rpy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuData>) ostream)
  "Serializes a message object of type '<ImuData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuData>) istream)
  "Deserializes a message object of type '<ImuData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuData>)))
  "Returns string type for a message object of type '<ImuData>"
  "tiggo_msgs/ImuData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuData)))
  "Returns string type for a message object of type 'ImuData"
  "tiggo_msgs/ImuData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuData>)))
  "Returns md5sum for a message object of type '<ImuData>"
  "8e8597e024d0d3fcae5cd7528d1984f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuData)))
  "Returns md5sum for a message object of type 'ImuData"
  "8e8597e024d0d3fcae5cd7528d1984f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuData>)))
  "Returns full string definition for message of type '<ImuData>"
  (cl:format cl:nil "Header header         ~%geometry_msgs/Vector3 acc~%geometry_msgs/Vector3 gyro~%Orientation rpy~%	~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: tiggo_msgs/Orientation~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuData)))
  "Returns full string definition for message of type 'ImuData"
  (cl:format cl:nil "Header header         ~%geometry_msgs/Vector3 acc~%geometry_msgs/Vector3 gyro~%Orientation rpy~%	~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: tiggo_msgs/Orientation~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuData>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuData
    (cl:cons ':header (header msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':rpy (rpy msg))
))
