; Auto-generated. Do not edit!


(cl:in-package tiggo_msgs-msg)


;//! \htmlinclude StereoObjMultiArray.msg.html

(cl:defclass <StereoObjMultiArray> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector tiggo_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'tiggo_msgs-msg:Point3f :initial-element (cl:make-instance 'tiggo_msgs-msg:Point3f))))
)

(cl:defclass StereoObjMultiArray (<StereoObjMultiArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StereoObjMultiArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StereoObjMultiArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tiggo_msgs-msg:<StereoObjMultiArray> is deprecated: use tiggo_msgs-msg:StereoObjMultiArray instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <StereoObjMultiArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tiggo_msgs-msg:data-val is deprecated.  Use tiggo_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StereoObjMultiArray>) ostream)
  "Serializes a message object of type '<StereoObjMultiArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StereoObjMultiArray>) istream)
  "Deserializes a message object of type '<StereoObjMultiArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tiggo_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StereoObjMultiArray>)))
  "Returns string type for a message object of type '<StereoObjMultiArray>"
  "tiggo_msgs/StereoObjMultiArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StereoObjMultiArray)))
  "Returns string type for a message object of type 'StereoObjMultiArray"
  "tiggo_msgs/StereoObjMultiArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StereoObjMultiArray>)))
  "Returns md5sum for a message object of type '<StereoObjMultiArray>"
  "4ce5b811f191fd19ad54fc0584fc5415")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StereoObjMultiArray)))
  "Returns md5sum for a message object of type 'StereoObjMultiArray"
  "4ce5b811f191fd19ad54fc0584fc5415")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StereoObjMultiArray>)))
  "Returns full string definition for message of type '<StereoObjMultiArray>"
  (cl:format cl:nil "Point3f[] data~%~%================================================================================~%MSG: tiggo_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StereoObjMultiArray)))
  "Returns full string definition for message of type 'StereoObjMultiArray"
  (cl:format cl:nil "Point3f[] data~%~%================================================================================~%MSG: tiggo_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StereoObjMultiArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StereoObjMultiArray>))
  "Converts a ROS message object to a list"
  (cl:list 'StereoObjMultiArray
    (cl:cons ':data (data msg))
))
