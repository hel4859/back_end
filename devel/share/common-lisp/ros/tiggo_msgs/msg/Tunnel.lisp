; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude Tunnel.msg.html

(cl:defclass <Tunnel> (roslisp-msg-protocol:ros-message)
  ((is_in_tunnel
    :reader is_in_tunnel
    :initarg :is_in_tunnel
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Tunnel (<Tunnel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tunnel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tunnel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<Tunnel> is deprecated: use tiggo_msgs-msg:Tunnel instead.")))

(cl:ensure-generic-function 'is_in_tunnel-val :lambda-list '(m))
(cl:defmethod is_in_tunnel-val ((m <Tunnel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:is_in_tunnel-val is deprecated.  Use tiggo_msgs-msg:is_in_tunnel instead.")
  (is_in_tunnel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tunnel>) ostream)
  "Serializes a message object of type '<Tunnel>"
  (cl:let* ((signed (cl:slot-value msg 'is_in_tunnel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tunnel>) istream)
  "Deserializes a message object of type '<Tunnel>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_in_tunnel) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tunnel>)))
  "Returns string type for a message object of type '<Tunnel>"
  "tiggo_msgs/Tunnel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tunnel)))
  "Returns string type for a message object of type 'Tunnel"
  "tiggo_msgs/Tunnel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tunnel>)))
  "Returns md5sum for a message object of type '<Tunnel>"
  "24dfabdca5c0f6448bcccc06249ea950")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tunnel)))
  "Returns md5sum for a message object of type 'Tunnel"
  "24dfabdca5c0f6448bcccc06249ea950")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tunnel>)))
  "Returns full string definition for message of type '<Tunnel>"
  (cl:format cl:nil "int8 is_in_tunnel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tunnel)))
  "Returns full string definition for message of type 'Tunnel"
  (cl:format cl:nil "int8 is_in_tunnel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tunnel>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tunnel>))
  "Converts a ROS message object to a list"
  (cl:list 'Tunnel
    (cl:cons ':is_in_tunnel (is_in_tunnel msg))
))
