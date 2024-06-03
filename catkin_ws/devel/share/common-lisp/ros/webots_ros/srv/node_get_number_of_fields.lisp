; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_number_of_fields-request.msg.html

(cl:defclass <node_get_number_of_fields-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (proto
    :reader proto
    :initarg :proto
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass node_get_number_of_fields-request (<node_get_number_of_fields-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_number_of_fields-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_number_of_fields-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_number_of_fields-request> is deprecated: use webots_ros-srv:node_get_number_of_fields-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_number_of_fields-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'proto-val :lambda-list '(m))
(cl:defmethod proto-val ((m <node_get_number_of_fields-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:proto-val is deprecated.  Use webots_ros-srv:proto instead.")
  (proto m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_number_of_fields-request>) ostream)
  "Serializes a message object of type '<node_get_number_of_fields-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'proto) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_number_of_fields-request>) istream)
  "Deserializes a message object of type '<node_get_number_of_fields-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'proto) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_number_of_fields-request>)))
  "Returns string type for a service object of type '<node_get_number_of_fields-request>"
  "webots_ros/node_get_number_of_fieldsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_number_of_fields-request)))
  "Returns string type for a service object of type 'node_get_number_of_fields-request"
  "webots_ros/node_get_number_of_fieldsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_number_of_fields-request>)))
  "Returns md5sum for a message object of type '<node_get_number_of_fields-request>"
  "921bd6384f46ac8733931a50b9739877")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_number_of_fields-request)))
  "Returns md5sum for a message object of type 'node_get_number_of_fields-request"
  "921bd6384f46ac8733931a50b9739877")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_number_of_fields-request>)))
  "Returns full string definition for message of type '<node_get_number_of_fields-request>"
  (cl:format cl:nil "uint64 node~%bool proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_number_of_fields-request)))
  "Returns full string definition for message of type 'node_get_number_of_fields-request"
  (cl:format cl:nil "uint64 node~%bool proto~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_number_of_fields-request>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_number_of_fields-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_number_of_fields-request
    (cl:cons ':node (node msg))
    (cl:cons ':proto (proto msg))
))
;//! \htmlinclude node_get_number_of_fields-response.msg.html

(cl:defclass <node_get_number_of_fields-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_number_of_fields-response (<node_get_number_of_fields-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_number_of_fields-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_number_of_fields-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_number_of_fields-response> is deprecated: use webots_ros-srv:node_get_number_of_fields-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <node_get_number_of_fields-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_number_of_fields-response>) ostream)
  "Serializes a message object of type '<node_get_number_of_fields-response>"
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_number_of_fields-response>) istream)
  "Deserializes a message object of type '<node_get_number_of_fields-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_number_of_fields-response>)))
  "Returns string type for a service object of type '<node_get_number_of_fields-response>"
  "webots_ros/node_get_number_of_fieldsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_number_of_fields-response)))
  "Returns string type for a service object of type 'node_get_number_of_fields-response"
  "webots_ros/node_get_number_of_fieldsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_number_of_fields-response>)))
  "Returns md5sum for a message object of type '<node_get_number_of_fields-response>"
  "921bd6384f46ac8733931a50b9739877")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_number_of_fields-response)))
  "Returns md5sum for a message object of type 'node_get_number_of_fields-response"
  "921bd6384f46ac8733931a50b9739877")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_number_of_fields-response>)))
  "Returns full string definition for message of type '<node_get_number_of_fields-response>"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_number_of_fields-response)))
  "Returns full string definition for message of type 'node_get_number_of_fields-response"
  (cl:format cl:nil "int32 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_number_of_fields-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_number_of_fields-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_number_of_fields-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_number_of_fields)))
  'node_get_number_of_fields-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_number_of_fields)))
  'node_get_number_of_fields-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_number_of_fields)))
  "Returns string type for a service object of type '<node_get_number_of_fields>"
  "webots_ros/node_get_number_of_fields")