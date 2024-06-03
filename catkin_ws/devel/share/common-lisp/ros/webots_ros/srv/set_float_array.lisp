; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude set_float_array-request.msg.html

(cl:defclass <set_float_array-request> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass set_float_array-request (<set_float_array-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_float_array-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_float_array-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_float_array-request> is deprecated: use webots_ros-srv:set_float_array-request instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <set_float_array-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:values-val is deprecated.  Use webots_ros-srv:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_float_array-request>) ostream)
  "Serializes a message object of type '<set_float_array-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
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
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_float_array-request>) istream)
  "Deserializes a message object of type '<set_float_array-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_float_array-request>)))
  "Returns string type for a service object of type '<set_float_array-request>"
  "webots_ros/set_float_arrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float_array-request)))
  "Returns string type for a service object of type 'set_float_array-request"
  "webots_ros/set_float_arrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_float_array-request>)))
  "Returns md5sum for a message object of type '<set_float_array-request>"
  "0fcc5d2c24929b6dbbf415b9579ddce4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_float_array-request)))
  "Returns md5sum for a message object of type 'set_float_array-request"
  "0fcc5d2c24929b6dbbf415b9579ddce4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_float_array-request>)))
  "Returns full string definition for message of type '<set_float_array-request>"
  (cl:format cl:nil "float64[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_float_array-request)))
  "Returns full string definition for message of type 'set_float_array-request"
  (cl:format cl:nil "float64[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_float_array-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_float_array-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_float_array-request
    (cl:cons ':values (values msg))
))
;//! \htmlinclude set_float_array-response.msg.html

(cl:defclass <set_float_array-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_float_array-response (<set_float_array-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_float_array-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_float_array-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_float_array-response> is deprecated: use webots_ros-srv:set_float_array-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_float_array-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_float_array-response>) ostream)
  "Serializes a message object of type '<set_float_array-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_float_array-response>) istream)
  "Deserializes a message object of type '<set_float_array-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_float_array-response>)))
  "Returns string type for a service object of type '<set_float_array-response>"
  "webots_ros/set_float_arrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float_array-response)))
  "Returns string type for a service object of type 'set_float_array-response"
  "webots_ros/set_float_arrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_float_array-response>)))
  "Returns md5sum for a message object of type '<set_float_array-response>"
  "0fcc5d2c24929b6dbbf415b9579ddce4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_float_array-response)))
  "Returns md5sum for a message object of type 'set_float_array-response"
  "0fcc5d2c24929b6dbbf415b9579ddce4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_float_array-response>)))
  "Returns full string definition for message of type '<set_float_array-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_float_array-response)))
  "Returns full string definition for message of type 'set_float_array-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_float_array-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_float_array-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_float_array-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_float_array)))
  'set_float_array-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_float_array)))
  'set_float_array-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float_array)))
  "Returns string type for a service object of type '<set_float_array>"
  "webots_ros/set_float_array")