; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude field_get_name-request.msg.html

(cl:defclass <field_get_name-request> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0))
)

(cl:defclass field_get_name-request (<field_get_name-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_name-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_name-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_name-request> is deprecated: use webots_ros-srv:field_get_name-request instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <field_get_name-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_name-request>) ostream)
  "Serializes a message object of type '<field_get_name-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_name-request>) istream)
  "Deserializes a message object of type '<field_get_name-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_name-request>)))
  "Returns string type for a service object of type '<field_get_name-request>"
  "webots_ros/field_get_nameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_name-request)))
  "Returns string type for a service object of type 'field_get_name-request"
  "webots_ros/field_get_nameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_name-request>)))
  "Returns md5sum for a message object of type '<field_get_name-request>"
  "5a98464d3ca05386300217ec41ec161f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_name-request)))
  "Returns md5sum for a message object of type 'field_get_name-request"
  "5a98464d3ca05386300217ec41ec161f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_name-request>)))
  "Returns full string definition for message of type '<field_get_name-request>"
  (cl:format cl:nil "uint64 field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_name-request)))
  "Returns full string definition for message of type 'field_get_name-request"
  (cl:format cl:nil "uint64 field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_name-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_name-request>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_name-request
    (cl:cons ':field (field msg))
))
;//! \htmlinclude field_get_name-response.msg.html

(cl:defclass <field_get_name-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass field_get_name-response (<field_get_name-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_name-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_name-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_name-response> is deprecated: use webots_ros-srv:field_get_name-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <field_get_name-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:name-val is deprecated.  Use webots_ros-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_name-response>) ostream)
  "Serializes a message object of type '<field_get_name-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_name-response>) istream)
  "Deserializes a message object of type '<field_get_name-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_name-response>)))
  "Returns string type for a service object of type '<field_get_name-response>"
  "webots_ros/field_get_nameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_name-response)))
  "Returns string type for a service object of type 'field_get_name-response"
  "webots_ros/field_get_nameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_name-response>)))
  "Returns md5sum for a message object of type '<field_get_name-response>"
  "5a98464d3ca05386300217ec41ec161f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_name-response)))
  "Returns md5sum for a message object of type 'field_get_name-response"
  "5a98464d3ca05386300217ec41ec161f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_name-response>)))
  "Returns full string definition for message of type '<field_get_name-response>"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_name-response)))
  "Returns full string definition for message of type 'field_get_name-response"
  (cl:format cl:nil "string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_name-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_name-response>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_name-response
    (cl:cons ':name (name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'field_get_name)))
  'field_get_name-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'field_get_name)))
  'field_get_name-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_name)))
  "Returns string type for a service object of type '<field_get_name>"
  "webots_ros/field_get_name")