; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude TrafficLight.msg.html

(cl:defclass <TrafficLight> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (stop_signal
    :reader stop_signal
    :initarg :stop_signal
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLight (<TrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<TrafficLight> is deprecated: use tiggo_msgs-msg:TrafficLight instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:state-val is deprecated.  Use tiggo_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'stop_signal-val :lambda-list '(m))
(cl:defmethod stop_signal-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:stop_signal-val is deprecated.  Use tiggo_msgs-msg:stop_signal instead.")
  (stop_signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLight>) ostream)
  "Serializes a message object of type '<TrafficLight>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stop_signal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLight>) istream)
  "Deserializes a message object of type '<TrafficLight>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_signal) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLight>)))
  "Returns string type for a message object of type '<TrafficLight>"
  "tiggo_msgs/TrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLight)))
  "Returns string type for a message object of type 'TrafficLight"
  "tiggo_msgs/TrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLight>)))
  "Returns md5sum for a message object of type '<TrafficLight>"
  "e4ff454073071ddd5d3e92ee57ec725a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLight)))
  "Returns md5sum for a message object of type 'TrafficLight"
  "e4ff454073071ddd5d3e92ee57ec725a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLight>)))
  "Returns full string definition for message of type '<TrafficLight>"
  (cl:format cl:nil "int8 state~%int8 stop_signal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLight)))
  "Returns full string definition for message of type 'TrafficLight"
  (cl:format cl:nil "int8 state~%int8 stop_signal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLight>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLight
    (cl:cons ':state (state msg))
    (cl:cons ':stop_signal (stop_signal msg))
))
