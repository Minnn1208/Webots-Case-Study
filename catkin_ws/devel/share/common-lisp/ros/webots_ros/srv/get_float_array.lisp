; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude get_float_array-request.msg.html

(cl:defclass <get_float_array-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_float_array-request (<get_float_array-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_float_array-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_float_array-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_float_array-request> is deprecated: use webots_ros-srv:get_float_array-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <get_float_array-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_float_array-request>) ostream)
  "Serializes a message object of type '<get_float_array-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ask) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_float_array-request>) istream)
  "Deserializes a message object of type '<get_float_array-request>"
    (cl:setf (cl:slot-value msg 'ask) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_float_array-request>)))
  "Returns string type for a service object of type '<get_float_array-request>"
  "webots_ros/get_float_arrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_float_array-request)))
  "Returns string type for a service object of type 'get_float_array-request"
  "webots_ros/get_float_arrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_float_array-request>)))
  "Returns md5sum for a message object of type '<get_float_array-request>"
  "7aae320d0f914d7069b041ff192847e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_float_array-request)))
  "Returns md5sum for a message object of type 'get_float_array-request"
  "7aae320d0f914d7069b041ff192847e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_float_array-request>)))
  "Returns full string definition for message of type '<get_float_array-request>"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_float_array-request)))
  "Returns full string definition for message of type 'get_float_array-request"
  (cl:format cl:nil "bool ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_float_array-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_float_array-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_float_array-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude get_float_array-response.msg.html

(cl:defclass <get_float_array-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass get_float_array-response (<get_float_array-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_float_array-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_float_array-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_float_array-response> is deprecated: use webots_ros-srv:get_float_array-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <get_float_array-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_float_array-response>) ostream)
  "Serializes a message object of type '<get_float_array-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_float_array-response>) istream)
  "Deserializes a message object of type '<get_float_array-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_float_array-response>)))
  "Returns string type for a service object of type '<get_float_array-response>"
  "webots_ros/get_float_arrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_float_array-response)))
  "Returns string type for a service object of type 'get_float_array-response"
  "webots_ros/get_float_arrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_float_array-response>)))
  "Returns md5sum for a message object of type '<get_float_array-response>"
  "7aae320d0f914d7069b041ff192847e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_float_array-response)))
  "Returns md5sum for a message object of type 'get_float_array-response"
  "7aae320d0f914d7069b041ff192847e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_float_array-response>)))
  "Returns full string definition for message of type '<get_float_array-response>"
  (cl:format cl:nil "float64[] value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_float_array-response)))
  "Returns full string definition for message of type 'get_float_array-response"
  (cl:format cl:nil "float64[] value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_float_array-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_float_array-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_float_array-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_float_array)))
  'get_float_array-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_float_array)))
  'get_float_array-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_float_array)))
  "Returns string type for a service object of type '<get_float_array>"
  "webots_ros/get_float_array")