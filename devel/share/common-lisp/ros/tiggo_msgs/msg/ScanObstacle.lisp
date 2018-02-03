; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude ScanObstacle.msg.html

(cl:defclass <ScanObstacle> (roslisp-msg-protocol:ros-message)
  ((exists
    :reader exists
    :initarg :exists
    :type cl:fixnum
    :initform 0)
   (min_distance
    :reader min_distance
    :initarg :min_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass ScanObstacle (<ScanObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScanObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScanObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<ScanObstacle> is deprecated: use tiggo_msgs-msg:ScanObstacle instead.")))

(cl:ensure-generic-function 'exists-val :lambda-list '(m))
(cl:defmethod exists-val ((m <ScanObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:exists-val is deprecated.  Use tiggo_msgs-msg:exists instead.")
  (exists m))

(cl:ensure-generic-function 'min_distance-val :lambda-list '(m))
(cl:defmethod min_distance-val ((m <ScanObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:min_distance-val is deprecated.  Use tiggo_msgs-msg:min_distance instead.")
  (min_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScanObstacle>) ostream)
  "Serializes a message object of type '<ScanObstacle>"
  (cl:let* ((signed (cl:slot-value msg 'exists)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScanObstacle>) istream)
  "Deserializes a message object of type '<ScanObstacle>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exists) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScanObstacle>)))
  "Returns string type for a message object of type '<ScanObstacle>"
  "tiggo_msgs/ScanObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScanObstacle)))
  "Returns string type for a message object of type 'ScanObstacle"
  "tiggo_msgs/ScanObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScanObstacle>)))
  "Returns md5sum for a message object of type '<ScanObstacle>"
  "d0450754306bcc24f48a507171ffd8ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScanObstacle)))
  "Returns md5sum for a message object of type 'ScanObstacle"
  "d0450754306bcc24f48a507171ffd8ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScanObstacle>)))
  "Returns full string definition for message of type '<ScanObstacle>"
  (cl:format cl:nil "int8 exists~%float64 min_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScanObstacle)))
  "Returns full string definition for message of type 'ScanObstacle"
  (cl:format cl:nil "int8 exists~%float64 min_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScanObstacle>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScanObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'ScanObstacle
    (cl:cons ':exists (exists msg))
    (cl:cons ':min_distance (min_distance msg))
))
