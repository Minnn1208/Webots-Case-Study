; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_image_load-request.msg.html

(cl:defclass <display_image_load-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass display_image_load-request (<display_image_load-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_load-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_load-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_load-request> is deprecated: use webots_ros-srv:display_image_load-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <display_image_load-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:filename-val is deprecated.  Use webots_ros-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_load-request>) ostream)
  "Serializes a message object of type '<display_image_load-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_load-request>) istream)
  "Deserializes a message object of type '<display_image_load-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_load-request>)))
  "Returns string type for a service object of type '<display_image_load-request>"
  "webots_ros/display_image_loadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_load-request)))
  "Returns string type for a service object of type 'display_image_load-request"
  "webots_ros/display_image_loadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_load-request>)))
  "Returns md5sum for a message object of type '<display_image_load-request>"
  "5c71ee48be952f1ade34fd3da67710f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_load-request)))
  "Returns md5sum for a message object of type 'display_image_load-request"
  "5c71ee48be952f1ade34fd3da67710f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_load-request>)))
  "Returns full string definition for message of type '<display_image_load-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_load-request)))
  "Returns full string definition for message of type 'display_image_load-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_load-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_load-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_load-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude display_image_load-response.msg.html

(cl:defclass <display_image_load-response> (roslisp-msg-protocol:ros-message)
  ((ir
    :reader ir
    :initarg :ir
    :type cl:integer
    :initform 0))
)

(cl:defclass display_image_load-response (<display_image_load-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_load-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_load-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_load-response> is deprecated: use webots_ros-srv:display_image_load-response instead.")))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <display_image_load-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ir-val is deprecated.  Use webots_ros-srv:ir instead.")
  (ir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_load-response>) ostream)
  "Serializes a message object of type '<display_image_load-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_load-response>) istream)
  "Deserializes a message object of type '<display_image_load-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_load-response>)))
  "Returns string type for a service object of type '<display_image_load-response>"
  "webots_ros/display_image_loadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_load-response)))
  "Returns string type for a service object of type 'display_image_load-response"
  "webots_ros/display_image_loadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_load-response>)))
  "Returns md5sum for a message object of type '<display_image_load-response>"
  "5c71ee48be952f1ade34fd3da67710f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_load-response)))
  "Returns md5sum for a message object of type 'display_image_load-response"
  "5c71ee48be952f1ade34fd3da67710f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_load-response>)))
  "Returns full string definition for message of type '<display_image_load-response>"
  (cl:format cl:nil "uint64 ir~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_load-response)))
  "Returns full string definition for message of type 'display_image_load-response"
  (cl:format cl:nil "uint64 ir~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_load-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_load-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_load-response
    (cl:cons ':ir (ir msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_image_load)))
  'display_image_load-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_image_load)))
  'display_image_load-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_load)))
  "Returns string type for a service object of type '<display_image_load>"
  "webots_ros/display_image_load")