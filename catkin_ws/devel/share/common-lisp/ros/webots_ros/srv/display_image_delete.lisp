; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude display_image_delete-request.msg.html

(cl:defclass <display_image_delete-request> (roslisp-msg-protocol:ros-message)
  ((ir
    :reader ir
    :initarg :ir
    :type cl:integer
    :initform 0))
)

(cl:defclass display_image_delete-request (<display_image_delete-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_delete-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_delete-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_delete-request> is deprecated: use webots_ros-srv:display_image_delete-request instead.")))

(cl:ensure-generic-function 'ir-val :lambda-list '(m))
(cl:defmethod ir-val ((m <display_image_delete-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ir-val is deprecated.  Use webots_ros-srv:ir instead.")
  (ir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_delete-request>) ostream)
  "Serializes a message object of type '<display_image_delete-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'ir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'ir)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_delete-request>) istream)
  "Deserializes a message object of type '<display_image_delete-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_delete-request>)))
  "Returns string type for a service object of type '<display_image_delete-request>"
  "webots_ros/display_image_deleteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_delete-request)))
  "Returns string type for a service object of type 'display_image_delete-request"
  "webots_ros/display_image_deleteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_delete-request>)))
  "Returns md5sum for a message object of type '<display_image_delete-request>"
  "21daf18e23f8cc4ce4452efc995e69da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_delete-request)))
  "Returns md5sum for a message object of type 'display_image_delete-request"
  "21daf18e23f8cc4ce4452efc995e69da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_delete-request>)))
  "Returns full string definition for message of type '<display_image_delete-request>"
  (cl:format cl:nil "uint64 ir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_delete-request)))
  "Returns full string definition for message of type 'display_image_delete-request"
  (cl:format cl:nil "uint64 ir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_delete-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_delete-request>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_delete-request
    (cl:cons ':ir (ir msg))
))
;//! \htmlinclude display_image_delete-response.msg.html

(cl:defclass <display_image_delete-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass display_image_delete-response (<display_image_delete-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <display_image_delete-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'display_image_delete-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<display_image_delete-response> is deprecated: use webots_ros-srv:display_image_delete-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <display_image_delete-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <display_image_delete-response>) ostream)
  "Serializes a message object of type '<display_image_delete-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <display_image_delete-response>) istream)
  "Deserializes a message object of type '<display_image_delete-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<display_image_delete-response>)))
  "Returns string type for a service object of type '<display_image_delete-response>"
  "webots_ros/display_image_deleteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_delete-response)))
  "Returns string type for a service object of type 'display_image_delete-response"
  "webots_ros/display_image_deleteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<display_image_delete-response>)))
  "Returns md5sum for a message object of type '<display_image_delete-response>"
  "21daf18e23f8cc4ce4452efc995e69da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'display_image_delete-response)))
  "Returns md5sum for a message object of type 'display_image_delete-response"
  "21daf18e23f8cc4ce4452efc995e69da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<display_image_delete-response>)))
  "Returns full string definition for message of type '<display_image_delete-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'display_image_delete-response)))
  "Returns full string definition for message of type 'display_image_delete-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <display_image_delete-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <display_image_delete-response>))
  "Converts a ROS message object to a list"
  (cl:list 'display_image_delete-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'display_image_delete)))
  'display_image_delete-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'display_image_delete)))
  'display_image_delete-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'display_image_delete)))
  "Returns string type for a service object of type '<display_image_delete>"
  "webots_ros/display_image_delete")