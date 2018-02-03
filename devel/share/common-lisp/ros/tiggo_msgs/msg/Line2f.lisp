; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude Line2f.msg.html

(cl:defclass <Line2f> (roslisp-msg-protocol:ros-message)
  ((vaild
    :reader vaild
    :initarg :vaild
    :type cl:fixnum
    :initform 0)
   (pt0
    :reader pt0
    :initarg :pt0
    :type tiggo_msgs-msg:Point2f
    :initform (cl:make-instance 'tiggo_msgs-msg:Point2f))
   (pt1
    :reader pt1
    :initarg :pt1
    :type tiggo_msgs-msg:Point2f
    :initform (cl:make-instance 'tiggo_msgs-msg:Point2f))
   (slope
    :reader slope
    :initarg :slope
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (len
    :reader len
    :initarg :len
    :type cl:float
    :initform 0.0))
)

(cl:defclass Line2f (<Line2f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Line2f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Line2f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<Line2f> is deprecated: use tiggo_msgs-msg:Line2f instead.")))

(cl:ensure-generic-function 'vaild-val :lambda-list '(m))
(cl:defmethod vaild-val ((m <Line2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:vaild-val is deprecated.  Use tiggo_msgs-msg:vaild instead.")
  (vaild m))

(cl:ensure-generic-function 'pt0-val :lambda-list '(m))
(cl:defmethod pt0-val ((m <Line2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:pt0-val is deprecated.  Use tiggo_msgs-msg:pt0 instead.")
  (pt0 m))

(cl:ensure-generic-function 'pt1-val :lambda-list '(m))
(cl:defmethod pt1-val ((m <Line2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:pt1-val is deprecated.  Use tiggo_msgs-msg:pt1 instead.")
  (pt1 m))

(cl:ensure-generic-function 'slope-val :lambda-list '(m))
(cl:defmethod slope-val ((m <Line2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:slope-val is deprecated.  Use tiggo_msgs-msg:slope instead.")
  (slope m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <Line2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:angle-val is deprecated.  Use tiggo_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'len-val :lambda-list '(m))
(cl:defmethod len-val ((m <Line2f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:len-val is deprecated.  Use tiggo_msgs-msg:len instead.")
  (len m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Line2f>) ostream)
  "Serializes a message object of type '<Line2f>"
  (cl:let* ((signed (cl:slot-value msg 'vaild)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pt0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pt1) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'slope))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'len))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Line2f>) istream)
  "Deserializes a message object of type '<Line2f>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vaild) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pt0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pt1) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slope) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'len) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Line2f>)))
  "Returns string type for a message object of type '<Line2f>"
  "tiggo_msgs/Line2f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Line2f)))
  "Returns string type for a message object of type 'Line2f"
  "tiggo_msgs/Line2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Line2f>)))
  "Returns md5sum for a message object of type '<Line2f>"
  "31da709181b047fe7aaf9f5ea4997c40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Line2f)))
  "Returns md5sum for a message object of type 'Line2f"
  "31da709181b047fe7aaf9f5ea4997c40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Line2f>)))
  "Returns full string definition for message of type '<Line2f>"
  (cl:format cl:nil "int8 vaild~%Point2f pt0~%Point2f pt1~%float64 slope~%float64 angle~%float64 len~%~%================================================================================~%MSG: tiggo_msgs/Point2f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Line2f)))
  "Returns full string definition for message of type 'Line2f"
  (cl:format cl:nil "int8 vaild~%Point2f pt0~%Point2f pt1~%float64 slope~%float64 angle~%float64 len~%~%================================================================================~%MSG: tiggo_msgs/Point2f~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Line2f>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pt0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pt1))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Line2f>))
  "Converts a ROS message object to a list"
  (cl:list 'Line2f
    (cl:cons ':vaild (vaild msg))
    (cl:cons ':pt0 (pt0 msg))
    (cl:cons ':pt1 (pt1 msg))
    (cl:cons ':slope (slope msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':len (len msg))
))
