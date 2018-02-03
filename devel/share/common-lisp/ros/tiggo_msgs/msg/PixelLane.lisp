; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude PixelLane.msg.html

(cl:defclass <PixelLane> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (l0
    :reader l0
    :initarg :l0
    :type tiggo_msgs-msg:Line2f
    :initform (cl:make-instance 'tiggo_msgs-msg:Line2f))
   (l1
    :reader l1
    :initarg :l1
    :type tiggo_msgs-msg:Line2f
    :initform (cl:make-instance 'tiggo_msgs-msg:Line2f))
   (r0
    :reader r0
    :initarg :r0
    :type tiggo_msgs-msg:Line2f
    :initform (cl:make-instance 'tiggo_msgs-msg:Line2f))
   (r1
    :reader r1
    :initarg :r1
    :type tiggo_msgs-msg:Line2f
    :initform (cl:make-instance 'tiggo_msgs-msg:Line2f)))
)

(cl:defclass PixelLane (<PixelLane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixelLane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixelLane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<PixelLane> is deprecated: use tiggo_msgs-msg:PixelLane instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PixelLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:header-val is deprecated.  Use tiggo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <PixelLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:num-val is deprecated.  Use tiggo_msgs-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'l0-val :lambda-list '(m))
(cl:defmethod l0-val ((m <PixelLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:l0-val is deprecated.  Use tiggo_msgs-msg:l0 instead.")
  (l0 m))

(cl:ensure-generic-function 'l1-val :lambda-list '(m))
(cl:defmethod l1-val ((m <PixelLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:l1-val is deprecated.  Use tiggo_msgs-msg:l1 instead.")
  (l1 m))

(cl:ensure-generic-function 'r0-val :lambda-list '(m))
(cl:defmethod r0-val ((m <PixelLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:r0-val is deprecated.  Use tiggo_msgs-msg:r0 instead.")
  (r0 m))

(cl:ensure-generic-function 'r1-val :lambda-list '(m))
(cl:defmethod r1-val ((m <PixelLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:r1-val is deprecated.  Use tiggo_msgs-msg:r1 instead.")
  (r1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixelLane>) ostream)
  "Serializes a message object of type '<PixelLane>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r1) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixelLane>) istream)
  "Deserializes a message object of type '<PixelLane>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r1) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixelLane>)))
  "Returns string type for a message object of type '<PixelLane>"
  "tiggo_msgs/PixelLane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixelLane)))
  "Returns string type for a message object of type 'PixelLane"
  "tiggo_msgs/PixelLane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixelLane>)))
  "Returns md5sum for a message object of type '<PixelLane>"
  "4116c3be631708dc81e93ce704fa097f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixelLane)))
  "Returns md5sum for a message object of type 'PixelLane"
  "4116c3be631708dc81e93ce704fa097f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixelLane>)))
  "Returns full string definition for message of type '<PixelLane>"
  (cl:format cl:nil "Header header~%int8 num~%Line2f l0~%Line2f l1~%Line2f r0~%Line2f r1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tiggo_msgs/Line2f~%int8 vaild~%Point2f pt0~%Point2f pt1~%float64 slope~%float64 angle~%float64 len~%~%================================================================================~%MSG: tiggo_msgs/Point2f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixelLane)))
  "Returns full string definition for message of type 'PixelLane"
  (cl:format cl:nil "Header header~%int8 num~%Line2f l0~%Line2f l1~%Line2f r0~%Line2f r1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tiggo_msgs/Line2f~%int8 vaild~%Point2f pt0~%Point2f pt1~%float64 slope~%float64 angle~%float64 len~%~%================================================================================~%MSG: tiggo_msgs/Point2f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixelLane>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r1))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixelLane>))
  "Converts a ROS message object to a list"
  (cl:list 'PixelLane
    (cl:cons ':header (header msg))
    (cl:cons ':num (num msg))
    (cl:cons ':l0 (l0 msg))
    (cl:cons ':l1 (l1 msg))
    (cl:cons ':r0 (r0 msg))
    (cl:cons ':r1 (r1 msg))
))
