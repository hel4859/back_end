; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude EsrObjMultiArray.msg.html

(cl:defclass <EsrObjMultiArray> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector tiggo_msgs-msg:EsrObj)
   :initform (cl:make-array 0 :element-type 'tiggo_msgs-msg:EsrObj :initial-element (cl:make-instance 'tiggo_msgs-msg:EsrObj))))
)

(cl:defclass EsrObjMultiArray (<EsrObjMultiArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EsrObjMultiArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EsrObjMultiArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<EsrObjMultiArray> is deprecated: use tiggo_msgs-msg:EsrObjMultiArray instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <EsrObjMultiArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:data-val is deprecated.  Use tiggo_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EsrObjMultiArray>) ostream)
  "Serializes a message object of type '<EsrObjMultiArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EsrObjMultiArray>) istream)
  "Deserializes a message object of type '<EsrObjMultiArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tiggo_msgs-msg:EsrObj))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EsrObjMultiArray>)))
  "Returns string type for a message object of type '<EsrObjMultiArray>"
  "tiggo_msgs/EsrObjMultiArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EsrObjMultiArray)))
  "Returns string type for a message object of type 'EsrObjMultiArray"
  "tiggo_msgs/EsrObjMultiArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EsrObjMultiArray>)))
  "Returns md5sum for a message object of type '<EsrObjMultiArray>"
  "da2617d3c5c6044de722689b1a5a381f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EsrObjMultiArray)))
  "Returns md5sum for a message object of type 'EsrObjMultiArray"
  "da2617d3c5c6044de722689b1a5a381f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EsrObjMultiArray>)))
  "Returns full string definition for message of type '<EsrObjMultiArray>"
  (cl:format cl:nil "EsrObj[] data~%~%================================================================================~%MSG: tiggo_msgs/EsrObj~%int8 track_status~%int8 occupied_state~%float64 x~%float64 y~%float64 rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EsrObjMultiArray)))
  "Returns full string definition for message of type 'EsrObjMultiArray"
  (cl:format cl:nil "EsrObj[] data~%~%================================================================================~%MSG: tiggo_msgs/EsrObj~%int8 track_status~%int8 occupied_state~%float64 x~%float64 y~%float64 rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EsrObjMultiArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EsrObjMultiArray>))
  "Converts a ROS message object to a list"
  (cl:list 'EsrObjMultiArray
    (cl:cons ':data (data msg))
))
