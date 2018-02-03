; Auto-generated. Do not edit!


(cl:in-package gl8_msgs-msg)


;//! \htmlinclude RoadSegment.msg.html

(cl:defclass <RoadSegment> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:boolean
    :initform cl:nil)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (origin
    :reader origin
    :initarg :origin
    :type gl8_msgs-msg:Point2D
    :initform (cl:make-instance 'gl8_msgs-msg:Point2D))
   (terminus
    :reader terminus
    :initarg :terminus
    :type gl8_msgs-msg:Point2D
    :initform (cl:make-instance 'gl8_msgs-msg:Point2D))
   (turn_direction
    :reader turn_direction
    :initarg :turn_direction
    :type cl:boolean
    :initform cl:nil)
   (center
    :reader center
    :initarg :center
    :type gl8_msgs-msg:Point2D
    :initform (cl:make-instance 'gl8_msgs-msg:Point2D))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (start_direction
    :reader start_direction
    :initarg :start_direction
    :type gl8_msgs-msg:Vector2
    :initform (cl:make-instance 'gl8_msgs-msg:Vector2))
   (end_direction
    :reader end_direction
    :initarg :end_direction
    :type gl8_msgs-msg:Vector2
    :initform (cl:make-instance 'gl8_msgs-msg:Vector2)))
)

(cl:defclass RoadSegment (<RoadSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gl8_msgs-msg:<RoadSegment> is deprecated: use gl8_msgs-msg:RoadSegment instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:type-val is deprecated.  Use gl8_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:length-val is deprecated.  Use gl8_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:origin-val is deprecated.  Use gl8_msgs-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'terminus-val :lambda-list '(m))
(cl:defmethod terminus-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:terminus-val is deprecated.  Use gl8_msgs-msg:terminus instead.")
  (terminus m))

(cl:ensure-generic-function 'turn_direction-val :lambda-list '(m))
(cl:defmethod turn_direction-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:turn_direction-val is deprecated.  Use gl8_msgs-msg:turn_direction instead.")
  (turn_direction m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:center-val is deprecated.  Use gl8_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:radius-val is deprecated.  Use gl8_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'start_direction-val :lambda-list '(m))
(cl:defmethod start_direction-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:start_direction-val is deprecated.  Use gl8_msgs-msg:start_direction instead.")
  (start_direction m))

(cl:ensure-generic-function 'end_direction-val :lambda-list '(m))
(cl:defmethod end_direction-val ((m <RoadSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:end_direction-val is deprecated.  Use gl8_msgs-msg:end_direction instead.")
  (end_direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadSegment>) ostream)
  "Serializes a message object of type '<RoadSegment>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'type) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'terminus) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turn_direction) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_direction) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadSegment>) istream)
  "Deserializes a message object of type '<RoadSegment>"
    (cl:setf (cl:slot-value msg 'type) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'terminus) istream)
    (cl:setf (cl:slot-value msg 'turn_direction) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_direction) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadSegment>)))
  "Returns string type for a message object of type '<RoadSegment>"
  "gl8_msgs/RoadSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadSegment)))
  "Returns string type for a message object of type 'RoadSegment"
  "gl8_msgs/RoadSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadSegment>)))
  "Returns md5sum for a message object of type '<RoadSegment>"
  "66a128b28bfec83dd3150626355d56af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadSegment)))
  "Returns md5sum for a message object of type 'RoadSegment"
  "66a128b28bfec83dd3150626355d56af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadSegment>)))
  "Returns full string definition for message of type '<RoadSegment>"
  (cl:format cl:nil "bool type ~%# if the road segment is line, the value of type is 0;~%# if the road segment is curve, the value of type is 1; ~%float64 length~%Point2D origin~%Point2D terminus~%# below parameters are for curve segments~%# if the road turns counterclockwise, then turn_direction is 0~%# if the road turns clockwise, then turn_direction is 1~%bool turn_direction~%Point2D center~%float64 radius~%Vector2 start_direction~%Vector2 end_direction~%~%~%~%~%================================================================================~%MSG: gl8_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: gl8_msgs/Vector2~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadSegment)))
  "Returns full string definition for message of type 'RoadSegment"
  (cl:format cl:nil "bool type ~%# if the road segment is line, the value of type is 0;~%# if the road segment is curve, the value of type is 1; ~%float64 length~%Point2D origin~%Point2D terminus~%# below parameters are for curve segments~%# if the road turns counterclockwise, then turn_direction is 0~%# if the road turns clockwise, then turn_direction is 1~%bool turn_direction~%Point2D center~%float64 radius~%Vector2 start_direction~%Vector2 end_direction~%~%~%~%~%================================================================================~%MSG: gl8_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: gl8_msgs/Vector2~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadSegment>))
  (cl:+ 0
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'terminus))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadSegment
    (cl:cons ':type (type msg))
    (cl:cons ':length (length msg))
    (cl:cons ':origin (origin msg))
    (cl:cons ':terminus (terminus msg))
    (cl:cons ':turn_direction (turn_direction msg))
    (cl:cons ':center (center msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':start_direction (start_direction msg))
    (cl:cons ':end_direction (end_direction msg))
))
