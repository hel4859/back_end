; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude CanFrame.msg.html

(cl:defclass <CanFrame> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (len
    :reader len
    :initarg :len
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 4 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass CanFrame (<CanFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<CanFrame> is deprecated: use tiggo_msgs-msg:CanFrame instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CanFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:id-val is deprecated.  Use tiggo_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'len-val :lambda-list '(m))
(cl:defmethod len-val ((m <CanFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:len-val is deprecated.  Use tiggo_msgs-msg:len instead.")
  (len m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CanFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:data-val is deprecated.  Use tiggo_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanFrame>) ostream)
  "Serializes a message object of type '<CanFrame>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'len)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanFrame>) istream)
  "Deserializes a message object of type '<CanFrame>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'len) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanFrame>)))
  "Returns string type for a message object of type '<CanFrame>"
  "tiggo_msgs/CanFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanFrame)))
  "Returns string type for a message object of type 'CanFrame"
  "tiggo_msgs/CanFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanFrame>)))
  "Returns md5sum for a message object of type '<CanFrame>"
  "c555b49a5597649a9f87196ae342f553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanFrame)))
  "Returns md5sum for a message object of type 'CanFrame"
  "c555b49a5597649a9f87196ae342f553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanFrame>)))
  "Returns full string definition for message of type '<CanFrame>"
  (cl:format cl:nil "int16 id ~%int16 len ~%int32[4] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanFrame)))
  "Returns full string definition for message of type 'CanFrame"
  (cl:format cl:nil "int16 id ~%int16 len ~%int32[4] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanFrame>))
  (cl:+ 0
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'CanFrame
    (cl:cons ':id (id msg))
    (cl:cons ':len (len msg))
    (cl:cons ':data (data msg))
))
