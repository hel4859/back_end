; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude CruiseState.msg.html

(cl:defclass <CruiseState> (roslisp-msg-protocol:ros-message)
  ((vaild
    :reader vaild
    :initarg :vaild
    :type cl:fixnum
    :initform 0)
   (front_safe
    :reader front_safe
    :initarg :front_safe
    :type cl:boolean
    :initform cl:nil)
   (left_safe
    :reader left_safe
    :initarg :left_safe
    :type cl:boolean
    :initform cl:nil)
   (right_safe
    :reader right_safe
    :initarg :right_safe
    :type cl:boolean
    :initform cl:nil)
   (have_map
    :reader have_map
    :initarg :have_map
    :type cl:boolean
    :initform cl:nil)
   (have_lane
    :reader have_lane
    :initarg :have_lane
    :type cl:fixnum
    :initform 0)
   (have_curb
    :reader have_curb
    :initarg :have_curb
    :type cl:fixnum
    :initform 0)
   (lane_change_state
    :reader lane_change_state
    :initarg :lane_change_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CruiseState (<CruiseState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CruiseState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CruiseState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<CruiseState> is deprecated: use tiggo_msgs-msg:CruiseState instead.")))

(cl:ensure-generic-function 'vaild-val :lambda-list '(m))
(cl:defmethod vaild-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:vaild-val is deprecated.  Use tiggo_msgs-msg:vaild instead.")
  (vaild m))

(cl:ensure-generic-function 'front_safe-val :lambda-list '(m))
(cl:defmethod front_safe-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:front_safe-val is deprecated.  Use tiggo_msgs-msg:front_safe instead.")
  (front_safe m))

(cl:ensure-generic-function 'left_safe-val :lambda-list '(m))
(cl:defmethod left_safe-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:left_safe-val is deprecated.  Use tiggo_msgs-msg:left_safe instead.")
  (left_safe m))

(cl:ensure-generic-function 'right_safe-val :lambda-list '(m))
(cl:defmethod right_safe-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:right_safe-val is deprecated.  Use tiggo_msgs-msg:right_safe instead.")
  (right_safe m))

(cl:ensure-generic-function 'have_map-val :lambda-list '(m))
(cl:defmethod have_map-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:have_map-val is deprecated.  Use tiggo_msgs-msg:have_map instead.")
  (have_map m))

(cl:ensure-generic-function 'have_lane-val :lambda-list '(m))
(cl:defmethod have_lane-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:have_lane-val is deprecated.  Use tiggo_msgs-msg:have_lane instead.")
  (have_lane m))

(cl:ensure-generic-function 'have_curb-val :lambda-list '(m))
(cl:defmethod have_curb-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:have_curb-val is deprecated.  Use tiggo_msgs-msg:have_curb instead.")
  (have_curb m))

(cl:ensure-generic-function 'lane_change_state-val :lambda-list '(m))
(cl:defmethod lane_change_state-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:lane_change_state-val is deprecated.  Use tiggo_msgs-msg:lane_change_state instead.")
  (lane_change_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CruiseState>) ostream)
  "Serializes a message object of type '<CruiseState>"
  (cl:let* ((signed (cl:slot-value msg 'vaild)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_safe) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_safe) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_safe) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'have_map) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'have_lane)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'have_curb)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_change_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CruiseState>) istream)
  "Deserializes a message object of type '<CruiseState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vaild) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'front_safe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_safe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_safe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'have_map) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'have_lane) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'have_curb) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_change_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CruiseState>)))
  "Returns string type for a message object of type '<CruiseState>"
  "tiggo_msgs/CruiseState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CruiseState)))
  "Returns string type for a message object of type 'CruiseState"
  "tiggo_msgs/CruiseState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CruiseState>)))
  "Returns md5sum for a message object of type '<CruiseState>"
  "6aa8783593a8ba8aa98f92f8d36a68f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CruiseState)))
  "Returns md5sum for a message object of type 'CruiseState"
  "6aa8783593a8ba8aa98f92f8d36a68f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CruiseState>)))
  "Returns full string definition for message of type '<CruiseState>"
  (cl:format cl:nil "int8 vaild~%bool front_safe~%bool left_safe~%bool right_safe~%bool have_map~%int8 have_lane~%int8 have_curb~%int8 lane_change_state~%  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CruiseState)))
  "Returns full string definition for message of type 'CruiseState"
  (cl:format cl:nil "int8 vaild~%bool front_safe~%bool left_safe~%bool right_safe~%bool have_map~%int8 have_lane~%int8 have_curb~%int8 lane_change_state~%  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CruiseState>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CruiseState>))
  "Converts a ROS message object to a list"
  (cl:list 'CruiseState
    (cl:cons ':vaild (vaild msg))
    (cl:cons ':front_safe (front_safe msg))
    (cl:cons ':left_safe (left_safe msg))
    (cl:cons ':right_safe (right_safe msg))
    (cl:cons ':have_map (have_map msg))
    (cl:cons ':have_lane (have_lane msg))
    (cl:cons ':have_curb (have_curb msg))
    (cl:cons ':lane_change_state (lane_change_state msg))
))
