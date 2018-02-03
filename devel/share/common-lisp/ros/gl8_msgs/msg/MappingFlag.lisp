; Auto-generated. Do not edit!


(cl:in-package gl8_msgs-msg)


;//! \htmlinclude MappingFlag.msg.html

(cl:defclass <MappingFlag> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MappingFlag (<MappingFlag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MappingFlag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MappingFlag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gl8_msgs-msg:<MappingFlag> is deprecated: use gl8_msgs-msg:MappingFlag instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <MappingFlag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:flag-val is deprecated.  Use gl8_msgs-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MappingFlag>) ostream)
  "Serializes a message object of type '<MappingFlag>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MappingFlag>) istream)
  "Deserializes a message object of type '<MappingFlag>"
    (cl:setf (cl:slot-value msg 'flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MappingFlag>)))
  "Returns string type for a message object of type '<MappingFlag>"
  "gl8_msgs/MappingFlag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MappingFlag)))
  "Returns string type for a message object of type 'MappingFlag"
  "gl8_msgs/MappingFlag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MappingFlag>)))
  "Returns md5sum for a message object of type '<MappingFlag>"
  "24842bc754e0f5cc982338eca1269251")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MappingFlag)))
  "Returns md5sum for a message object of type 'MappingFlag"
  "24842bc754e0f5cc982338eca1269251")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MappingFlag>)))
  "Returns full string definition for message of type '<MappingFlag>"
  (cl:format cl:nil "bool flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MappingFlag)))
  "Returns full string definition for message of type 'MappingFlag"
  (cl:format cl:nil "bool flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MappingFlag>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MappingFlag>))
  "Converts a ROS message object to a list"
  (cl:list 'MappingFlag
    (cl:cons ':flag (flag msg))
))
