; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude Uturn.msg.html

(cl:defclass <Uturn> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (stop
    :reader stop
    :initarg :stop
    :type cl:fixnum
    :initform 0)
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0))
)

(cl:defclass Uturn (<Uturn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Uturn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Uturn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<Uturn> is deprecated: use tiggo_msgs-msg:Uturn instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Uturn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:state-val is deprecated.  Use tiggo_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <Uturn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:stop-val is deprecated.  Use tiggo_msgs-msg:stop instead.")
  (stop m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <Uturn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:steer-val is deprecated.  Use tiggo_msgs-msg:steer instead.")
  (steer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Uturn>) ostream)
  "Serializes a message object of type '<Uturn>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stop)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Uturn>) istream)
  "Deserializes a message object of type '<Uturn>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Uturn>)))
  "Returns string type for a message object of type '<Uturn>"
  "tiggo_msgs/Uturn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Uturn)))
  "Returns string type for a message object of type 'Uturn"
  "tiggo_msgs/Uturn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Uturn>)))
  "Returns md5sum for a message object of type '<Uturn>"
  "79115c01ac69e86c573d8bdbf1669193")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Uturn)))
  "Returns md5sum for a message object of type 'Uturn"
  "79115c01ac69e86c573d8bdbf1669193")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Uturn>)))
  "Returns full string definition for message of type '<Uturn>"
  (cl:format cl:nil "int8 state~%int8 stop~%float64 steer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Uturn)))
  "Returns full string definition for message of type 'Uturn"
  (cl:format cl:nil "int8 state~%int8 stop~%float64 steer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Uturn>))
  (cl:+ 0
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Uturn>))
  "Converts a ROS message object to a list"
  (cl:list 'Uturn
    (cl:cons ':state (state msg))
    (cl:cons ':stop (stop msg))
    (cl:cons ':steer (steer msg))
))
