; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_disable_contact_points_tracking-request.msg.html

(cl:defclass <node_disable_contact_points_tracking-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_disable_contact_points_tracking-request (<node_disable_contact_points_tracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_disable_contact_points_tracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_disable_contact_points_tracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_disable_contact_points_tracking-request> is deprecated: use webots_ros-srv:node_disable_contact_points_tracking-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_disable_contact_points_tracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_disable_contact_points_tracking-request>) ostream)
  "Serializes a message object of type '<node_disable_contact_points_tracking-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_disable_contact_points_tracking-request>) istream)
  "Deserializes a message object of type '<node_disable_contact_points_tracking-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_disable_contact_points_tracking-request>)))
  "Returns string type for a service object of type '<node_disable_contact_points_tracking-request>"
  "webots_ros/node_disable_contact_points_trackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_disable_contact_points_tracking-request)))
  "Returns string type for a service object of type 'node_disable_contact_points_tracking-request"
  "webots_ros/node_disable_contact_points_trackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_disable_contact_points_tracking-request>)))
  "Returns md5sum for a message object of type '<node_disable_contact_points_tracking-request>"
  "594d3b785623c78d3382c6628faa0f8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_disable_contact_points_tracking-request)))
  "Returns md5sum for a message object of type 'node_disable_contact_points_tracking-request"
  "594d3b785623c78d3382c6628faa0f8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_disable_contact_points_tracking-request>)))
  "Returns full string definition for message of type '<node_disable_contact_points_tracking-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_disable_contact_points_tracking-request)))
  "Returns full string definition for message of type 'node_disable_contact_points_tracking-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_disable_contact_points_tracking-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_disable_contact_points_tracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_disable_contact_points_tracking-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_disable_contact_points_tracking-response.msg.html

(cl:defclass <node_disable_contact_points_tracking-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass node_disable_contact_points_tracking-response (<node_disable_contact_points_tracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_disable_contact_points_tracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_disable_contact_points_tracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_disable_contact_points_tracking-response> is deprecated: use webots_ros-srv:node_disable_contact_points_tracking-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <node_disable_contact_points_tracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_disable_contact_points_tracking-response>) ostream)
  "Serializes a message object of type '<node_disable_contact_points_tracking-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_disable_contact_points_tracking-response>) istream)
  "Deserializes a message object of type '<node_disable_contact_points_tracking-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_disable_contact_points_tracking-response>)))
  "Returns string type for a service object of type '<node_disable_contact_points_tracking-response>"
  "webots_ros/node_disable_contact_points_trackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_disable_contact_points_tracking-response)))
  "Returns string type for a service object of type 'node_disable_contact_points_tracking-response"
  "webots_ros/node_disable_contact_points_trackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_disable_contact_points_tracking-response>)))
  "Returns md5sum for a message object of type '<node_disable_contact_points_tracking-response>"
  "594d3b785623c78d3382c6628faa0f8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_disable_contact_points_tracking-response)))
  "Returns md5sum for a message object of type 'node_disable_contact_points_tracking-response"
  "594d3b785623c78d3382c6628faa0f8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_disable_contact_points_tracking-response>)))
  "Returns full string definition for message of type '<node_disable_contact_points_tracking-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_disable_contact_points_tracking-response)))
  "Returns full string definition for message of type 'node_disable_contact_points_tracking-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_disable_contact_points_tracking-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_disable_contact_points_tracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_disable_contact_points_tracking-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_disable_contact_points_tracking)))
  'node_disable_contact_points_tracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_disable_contact_points_tracking)))
  'node_disable_contact_points_tracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_disable_contact_points_tracking)))
  "Returns string type for a service object of type '<node_disable_contact_points_tracking>"
  "webots_ros/node_disable_contact_points_tracking")