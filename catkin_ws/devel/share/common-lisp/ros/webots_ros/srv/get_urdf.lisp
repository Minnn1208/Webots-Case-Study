; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude get_urdf-request.msg.html

(cl:defclass <get_urdf-request> (roslisp-msg-protocol:ros-message)
  ((prefix
    :reader prefix
    :initarg :prefix
    :type cl:string
    :initform ""))
)

(cl:defclass get_urdf-request (<get_urdf-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_urdf-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_urdf-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_urdf-request> is deprecated: use webots_ros-srv:get_urdf-request instead.")))

(cl:ensure-generic-function 'prefix-val :lambda-list '(m))
(cl:defmethod prefix-val ((m <get_urdf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:prefix-val is deprecated.  Use webots_ros-srv:prefix instead.")
  (prefix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_urdf-request>) ostream)
  "Serializes a message object of type '<get_urdf-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prefix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_urdf-request>) istream)
  "Deserializes a message object of type '<get_urdf-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_urdf-request>)))
  "Returns string type for a service object of type '<get_urdf-request>"
  "webots_ros/get_urdfRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_urdf-request)))
  "Returns string type for a service object of type 'get_urdf-request"
  "webots_ros/get_urdfRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_urdf-request>)))
  "Returns md5sum for a message object of type '<get_urdf-request>"
  "9ae31c29f15764629e70e60492948eb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_urdf-request)))
  "Returns md5sum for a message object of type 'get_urdf-request"
  "9ae31c29f15764629e70e60492948eb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_urdf-request>)))
  "Returns full string definition for message of type '<get_urdf-request>"
  (cl:format cl:nil "string prefix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_urdf-request)))
  "Returns full string definition for message of type 'get_urdf-request"
  (cl:format cl:nil "string prefix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_urdf-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'prefix))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_urdf-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_urdf-request
    (cl:cons ':prefix (prefix msg))
))
;//! \htmlinclude get_urdf-response.msg.html

(cl:defclass <get_urdf-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass get_urdf-response (<get_urdf-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_urdf-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_urdf-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<get_urdf-response> is deprecated: use webots_ros-srv:get_urdf-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <get_urdf-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_urdf-response>) ostream)
  "Serializes a message object of type '<get_urdf-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_urdf-response>) istream)
  "Deserializes a message object of type '<get_urdf-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_urdf-response>)))
  "Returns string type for a service object of type '<get_urdf-response>"
  "webots_ros/get_urdfResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_urdf-response)))
  "Returns string type for a service object of type 'get_urdf-response"
  "webots_ros/get_urdfResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_urdf-response>)))
  "Returns md5sum for a message object of type '<get_urdf-response>"
  "9ae31c29f15764629e70e60492948eb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_urdf-response)))
  "Returns md5sum for a message object of type 'get_urdf-response"
  "9ae31c29f15764629e70e60492948eb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_urdf-response>)))
  "Returns full string definition for message of type '<get_urdf-response>"
  (cl:format cl:nil "string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_urdf-response)))
  "Returns full string definition for message of type 'get_urdf-response"
  (cl:format cl:nil "string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_urdf-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_urdf-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_urdf-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_urdf)))
  'get_urdf-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_urdf)))
  'get_urdf-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_urdf)))
  "Returns string type for a service object of type '<get_urdf>"
  "webots_ros/get_urdf")