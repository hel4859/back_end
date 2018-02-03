; Auto-generated. Do not edit!


(cl:in-package gl8_msgs-msg)


;//! \htmlinclude MapNearby.msg.html

(cl:defclass <MapNearby> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (layout
    :reader layout
    :initarg :layout
    :type std_msgs-msg:MultiArrayLayout
    :initform (cl:make-instance 'std_msgs-msg:MultiArrayLayout))
   (road
    :reader road
    :initarg :road
    :type (cl:vector gl8_msgs-msg:RoadSegment)
   :initform (cl:make-array 0 :element-type 'gl8_msgs-msg:RoadSegment :initial-element (cl:make-instance 'gl8_msgs-msg:RoadSegment))))
)

(cl:defclass MapNearby (<MapNearby>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapNearby>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapNearby)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gl8_msgs-msg:<MapNearby> is deprecated: use gl8_msgs-msg:MapNearby instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapNearby>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:header-val is deprecated.  Use gl8_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MapNearby>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:status-val is deprecated.  Use gl8_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'layout-val :lambda-list '(m))
(cl:defmethod layout-val ((m <MapNearby>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:layout-val is deprecated.  Use gl8_msgs-msg:layout instead.")
  (layout m))

(cl:ensure-generic-function 'road-val :lambda-list '(m))
(cl:defmethod road-val ((m <MapNearby>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gl8_msgs-msg:road-val is deprecated.  Use gl8_msgs-msg:road instead.")
  (road m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapNearby>) ostream)
  "Serializes a message object of type '<MapNearby>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'layout) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'road))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'road))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapNearby>) istream)
  "Deserializes a message object of type '<MapNearby>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'layout) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'road) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'road)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gl8_msgs-msg:RoadSegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapNearby>)))
  "Returns string type for a message object of type '<MapNearby>"
  "gl8_msgs/MapNearby")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapNearby)))
  "Returns string type for a message object of type 'MapNearby"
  "gl8_msgs/MapNearby")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapNearby>)))
  "Returns md5sum for a message object of type '<MapNearby>"
  "4bdfa622e60bd6bfe837b9b8ca5046e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapNearby)))
  "Returns md5sum for a message object of type 'MapNearby"
  "4bdfa622e60bd6bfe837b9b8ca5046e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapNearby>)))
  "Returns full string definition for message of type '<MapNearby>"
  (cl:format cl:nil "std_msgs/Header header~%bool status~%std_msgs/MultiArrayLayout layout~%RoadSegment[] road~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: gl8_msgs/RoadSegment~%bool type ~%# if the road segment is line, the value of type is 0;~%# if the road segment is curve, the value of type is 1; ~%float64 length~%Point2D origin~%Point2D terminus~%# below parameters are for curve segments~%# if the road turns counterclockwise, then turn_direction is 0~%# if the road turns clockwise, then turn_direction is 1~%bool turn_direction~%Point2D center~%float64 radius~%Vector2 start_direction~%Vector2 end_direction~%~%~%~%~%================================================================================~%MSG: gl8_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: gl8_msgs/Vector2~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapNearby)))
  "Returns full string definition for message of type 'MapNearby"
  (cl:format cl:nil "std_msgs/Header header~%bool status~%std_msgs/MultiArrayLayout layout~%RoadSegment[] road~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: gl8_msgs/RoadSegment~%bool type ~%# if the road segment is line, the value of type is 0;~%# if the road segment is curve, the value of type is 1; ~%float64 length~%Point2D origin~%Point2D terminus~%# below parameters are for curve segments~%# if the road turns counterclockwise, then turn_direction is 0~%# if the road turns clockwise, then turn_direction is 1~%bool turn_direction~%Point2D center~%float64 radius~%Vector2 start_direction~%Vector2 end_direction~%~%~%~%~%================================================================================~%MSG: gl8_msgs/Point2D~%float64 x~%float64 y~%~%================================================================================~%MSG: gl8_msgs/Vector2~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapNearby>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'layout))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'road) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapNearby>))
  "Converts a ROS message object to a list"
  (cl:list 'MapNearby
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':layout (layout msg))
    (cl:cons ':road (road msg))
))
