; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude skin_get_bone_name-request.msg.html

(cl:defclass <skin_get_bone_name-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass skin_get_bone_name-request (<skin_get_bone_name-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skin_get_bone_name-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skin_get_bone_name-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<skin_get_bone_name-request> is deprecated: use webots_ros-srv:skin_get_bone_name-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <skin_get_bone_name-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skin_get_bone_name-request>) ostream)
  "Serializes a message object of type '<skin_get_bone_name-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skin_get_bone_name-request>) istream)
  "Deserializes a message object of type '<skin_get_bone_name-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skin_get_bone_name-request>)))
  "Returns string type for a service object of type '<skin_get_bone_name-request>"
  "webots_ros/skin_get_bone_nameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_name-request)))
  "Returns string type for a service object of type 'skin_get_bone_name-request"
  "webots_ros/skin_get_bone_nameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skin_get_bone_name-request>)))
  "Returns md5sum for a message object of type '<skin_get_bone_name-request>"
  "66ffbfea27ff9e5699fd78f900fd8579")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skin_get_bone_name-request)))
  "Returns md5sum for a message object of type 'skin_get_bone_name-request"
  "66ffbfea27ff9e5699fd78f900fd8579")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skin_get_bone_name-request>)))
  "Returns full string definition for message of type '<skin_get_bone_name-request>"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skin_get_bone_name-request)))
  "Returns full string definition for message of type 'skin_get_bone_name-request"
  (cl:format cl:nil "int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skin_get_bone_name-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skin_get_bone_name-request>))
  "Converts a ROS message object to a list"
  (cl:list 'skin_get_bone_name-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude skin_get_bone_name-response.msg.html

(cl:defclass <skin_get_bone_name-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass skin_get_bone_name-response (<skin_get_bone_name-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <skin_get_bone_name-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'skin_get_bone_name-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<skin_get_bone_name-response> is deprecated: use webots_ros-srv:skin_get_bone_name-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <skin_get_bone_name-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:name-val is deprecated.  Use webots_ros-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <skin_get_bone_name-response>) ostream)
  "Serializes a message object of type '<skin_get_bone_name-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <skin_get_bone_name-response>) istream)
  "Deserializes a message object of type '<skin_get_bone_name-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<skin_get_bone_name-response>)))
  "Returns string type for a service object of type '<skin_get_bone_name-response>"
  "webots_ros/skin_get_bone_nameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_name-response)))
  "Returns string type for a service object of type 'skin_get_bone_name-response"
  "webots_ros/skin_get_bone_nameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<skin_get_bone_name-response>)))
  "Returns md5sum for a message object of type '<skin_get_bone_name-response>"
  "66ffbfea27ff9e5699fd78f900fd8579")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'skin_get_bone_name-response)))
  "Returns md5sum for a message object of type 'skin_get_bone_name-response"
  "66ffbfea27ff9e5699fd78f900fd8579")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<skin_get_bone_name-response>)))
  "Returns full string definition for message of type '<skin_get_bone_name-response>"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'skin_get_bone_name-response)))
  "Returns full string definition for message of type 'skin_get_bone_name-response"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <skin_get_bone_name-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <skin_get_bone_name-response>))
  "Converts a ROS message object to a list"
  (cl:list 'skin_get_bone_name-response
    (cl:cons ':name (name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'skin_get_bone_name)))
  'skin_get_bone_name-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'skin_get_bone_name)))
  'skin_get_bone_name-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'skin_get_bone_name)))
  "Returns string type for a service object of type '<skin_get_bone_name>"
  "webots_ros/skin_get_bone_name")