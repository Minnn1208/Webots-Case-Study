; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude set_string-request.msg.html

(cl:defclass <set_string-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass set_string-request (<set_string-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_string-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_string-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_string-request> is deprecated: use webots_ros-srv:set_string-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_string-request>) ostream)
  "Serializes a message object of type '<set_string-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_string-request>) istream)
  "Deserializes a message object of type '<set_string-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_string-request>)))
  "Returns string type for a service object of type '<set_string-request>"
  "webots_ros/set_stringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_string-request)))
  "Returns string type for a service object of type 'set_string-request"
  "webots_ros/set_stringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_string-request>)))
  "Returns md5sum for a message object of type '<set_string-request>"
  "0462bc0e878964615c49ad8ef45df667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_string-request)))
  "Returns md5sum for a message object of type 'set_string-request"
  "0462bc0e878964615c49ad8ef45df667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_string-request>)))
  "Returns full string definition for message of type '<set_string-request>"
  (cl:format cl:nil "string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_string-request)))
  "Returns full string definition for message of type 'set_string-request"
  (cl:format cl:nil "string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_string-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_string-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_string-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_string-response.msg.html

(cl:defclass <set_string-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_string-response (<set_string-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_string-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_string-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<set_string-response> is deprecated: use webots_ros-srv:set_string-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <set_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_string-response>) ostream)
  "Serializes a message object of type '<set_string-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_string-response>) istream)
  "Deserializes a message object of type '<set_string-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_string-response>)))
  "Returns string type for a service object of type '<set_string-response>"
  "webots_ros/set_stringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_string-response)))
  "Returns string type for a service object of type 'set_string-response"
  "webots_ros/set_stringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_string-response>)))
  "Returns md5sum for a message object of type '<set_string-response>"
  "0462bc0e878964615c49ad8ef45df667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_string-response)))
  "Returns md5sum for a message object of type 'set_string-response"
  "0462bc0e878964615c49ad8ef45df667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_string-response>)))
  "Returns full string definition for message of type '<set_string-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_string-response)))
  "Returns full string definition for message of type 'set_string-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_string-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_string-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_string-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_string)))
  'set_string-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_string)))
  'set_string-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_string)))
  "Returns string type for a service object of type '<set_string>"
  "webots_ros/set_string")