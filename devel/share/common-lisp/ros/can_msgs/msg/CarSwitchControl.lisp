; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude CarSwitchControl.msg.html

(cl:defclass <CarSwitchControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ImmStop
    :reader ImmStop
    :initarg :ImmStop
    :type cl:fixnum
    :initform 0)
   (LightControl
    :reader LightControl
    :initarg :LightControl
    :type cl:fixnum
    :initform 0)
   (HornControl
    :reader HornControl
    :initarg :HornControl
    :type cl:fixnum
    :initform 0)
   (DoorControl
    :reader DoorControl
    :initarg :DoorControl
    :type cl:fixnum
    :initform 0)
   (LidarObstacleMode
    :reader LidarObstacleMode
    :initarg :LidarObstacleMode
    :type cl:fixnum
    :initform 0)
   (HMIstart
    :reader HMIstart
    :initarg :HMIstart
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CarSwitchControl (<CarSwitchControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarSwitchControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarSwitchControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<CarSwitchControl> is deprecated: use can_msgs-msg:CarSwitchControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarSwitchControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ImmStop-val :lambda-list '(m))
(cl:defmethod ImmStop-val ((m <CarSwitchControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:ImmStop-val is deprecated.  Use can_msgs-msg:ImmStop instead.")
  (ImmStop m))

(cl:ensure-generic-function 'LightControl-val :lambda-list '(m))
(cl:defmethod LightControl-val ((m <CarSwitchControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:LightControl-val is deprecated.  Use can_msgs-msg:LightControl instead.")
  (LightControl m))

(cl:ensure-generic-function 'HornControl-val :lambda-list '(m))
(cl:defmethod HornControl-val ((m <CarSwitchControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:HornControl-val is deprecated.  Use can_msgs-msg:HornControl instead.")
  (HornControl m))

(cl:ensure-generic-function 'DoorControl-val :lambda-list '(m))
(cl:defmethod DoorControl-val ((m <CarSwitchControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:DoorControl-val is deprecated.  Use can_msgs-msg:DoorControl instead.")
  (DoorControl m))

(cl:ensure-generic-function 'LidarObstacleMode-val :lambda-list '(m))
(cl:defmethod LidarObstacleMode-val ((m <CarSwitchControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:LidarObstacleMode-val is deprecated.  Use can_msgs-msg:LidarObstacleMode instead.")
  (LidarObstacleMode m))

(cl:ensure-generic-function 'HMIstart-val :lambda-list '(m))
(cl:defmethod HMIstart-val ((m <CarSwitchControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:HMIstart-val is deprecated.  Use can_msgs-msg:HMIstart instead.")
  (HMIstart m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarSwitchControl>) ostream)
  "Serializes a message object of type '<CarSwitchControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ImmStop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LightControl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HornControl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DoorControl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarObstacleMode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HMIstart)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarSwitchControl>) istream)
  "Deserializes a message object of type '<CarSwitchControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ImmStop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LightControl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HornControl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DoorControl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LidarObstacleMode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'HMIstart)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarSwitchControl>)))
  "Returns string type for a message object of type '<CarSwitchControl>"
  "can_msgs/CarSwitchControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarSwitchControl)))
  "Returns string type for a message object of type 'CarSwitchControl"
  "can_msgs/CarSwitchControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarSwitchControl>)))
  "Returns md5sum for a message object of type '<CarSwitchControl>"
  "1ba902f2e45ff45d9b74301bcd6ed19f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarSwitchControl)))
  "Returns md5sum for a message object of type 'CarSwitchControl"
  "1ba902f2e45ff45d9b74301bcd6ed19f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarSwitchControl>)))
  "Returns full string definition for message of type '<CarSwitchControl>"
  (cl:format cl:nil "Header header~%uint8 ImmStop~%uint8 LightControl~%uint8 HornControl~%uint8 DoorControl~%uint8 LidarObstacleMode~%uint8 HMIstart~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarSwitchControl)))
  "Returns full string definition for message of type 'CarSwitchControl"
  (cl:format cl:nil "Header header~%uint8 ImmStop~%uint8 LightControl~%uint8 HornControl~%uint8 DoorControl~%uint8 LidarObstacleMode~%uint8 HMIstart~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarSwitchControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarSwitchControl>))
  "Converts a ROS message object to a list"
  (cl:list 'CarSwitchControl
    (cl:cons ':header (header msg))
    (cl:cons ':ImmStop (ImmStop msg))
    (cl:cons ':LightControl (LightControl msg))
    (cl:cons ':HornControl (HornControl msg))
    (cl:cons ':DoorControl (DoorControl msg))
    (cl:cons ':LidarObstacleMode (LidarObstacleMode msg))
    (cl:cons ':HMIstart (HMIstart msg))
))
