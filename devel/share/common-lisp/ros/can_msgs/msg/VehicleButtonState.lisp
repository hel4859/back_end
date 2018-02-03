; Auto-generated. Do not edit!


(cl:in-package can_msgs-msg)


;//! \htmlinclude VehicleButtonState.msg.html

(cl:defclass <VehicleButtonState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (StartTrigger
    :reader StartTrigger
    :initarg :StartTrigger
    :type cl:fixnum
    :initform 0)
   (AutoDriveSwitch
    :reader AutoDriveSwitch
    :initarg :AutoDriveSwitch
    :type cl:fixnum
    :initform 0)
   (EmStopSwitch
    :reader EmStopSwitch
    :initarg :EmStopSwitch
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleButtonState (<VehicleButtonState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleButtonState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleButtonState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_msgs-msg:<VehicleButtonState> is deprecated: use can_msgs-msg:VehicleButtonState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleButtonState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:header-val is deprecated.  Use can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'StartTrigger-val :lambda-list '(m))
(cl:defmethod StartTrigger-val ((m <VehicleButtonState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:StartTrigger-val is deprecated.  Use can_msgs-msg:StartTrigger instead.")
  (StartTrigger m))

(cl:ensure-generic-function 'AutoDriveSwitch-val :lambda-list '(m))
(cl:defmethod AutoDriveSwitch-val ((m <VehicleButtonState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:AutoDriveSwitch-val is deprecated.  Use can_msgs-msg:AutoDriveSwitch instead.")
  (AutoDriveSwitch m))

(cl:ensure-generic-function 'EmStopSwitch-val :lambda-list '(m))
(cl:defmethod EmStopSwitch-val ((m <VehicleButtonState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_msgs-msg:EmStopSwitch-val is deprecated.  Use can_msgs-msg:EmStopSwitch instead.")
  (EmStopSwitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleButtonState>) ostream)
  "Serializes a message object of type '<VehicleButtonState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StartTrigger)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AutoDriveSwitch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EmStopSwitch)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleButtonState>) istream)
  "Deserializes a message object of type '<VehicleButtonState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'StartTrigger)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AutoDriveSwitch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EmStopSwitch)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleButtonState>)))
  "Returns string type for a message object of type '<VehicleButtonState>"
  "can_msgs/VehicleButtonState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleButtonState)))
  "Returns string type for a message object of type 'VehicleButtonState"
  "can_msgs/VehicleButtonState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleButtonState>)))
  "Returns md5sum for a message object of type '<VehicleButtonState>"
  "7d8e06def539984a8d90f4ab9c706672")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleButtonState)))
  "Returns md5sum for a message object of type 'VehicleButtonState"
  "7d8e06def539984a8d90f4ab9c706672")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleButtonState>)))
  "Returns full string definition for message of type '<VehicleButtonState>"
  (cl:format cl:nil "Header header~%uint8 StartTrigger~%uint8 AutoDriveSwitch~%uint8 EmStopSwitch~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleButtonState)))
  "Returns full string definition for message of type 'VehicleButtonState"
  (cl:format cl:nil "Header header~%uint8 StartTrigger~%uint8 AutoDriveSwitch~%uint8 EmStopSwitch~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleButtonState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleButtonState>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleButtonState
    (cl:cons ':header (header msg))
    (cl:cons ':StartTrigger (StartTrigger msg))
    (cl:cons ':AutoDriveSwitch (AutoDriveSwitch msg))
    (cl:cons ':EmStopSwitch (EmStopSwitch msg))
))
