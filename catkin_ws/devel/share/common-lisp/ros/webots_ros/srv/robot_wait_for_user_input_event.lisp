; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude robot_wait_for_user_input_event-request.msg.html

(cl:defclass <robot_wait_for_user_input_event-request> (roslisp-msg-protocol:ros-message)
  ((eventType
    :reader eventType
    :initarg :eventType
    :type cl:integer
    :initform 0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0))
)

(cl:defclass robot_wait_for_user_input_event-request (<robot_wait_for_user_input_event-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_wait_for_user_input_event-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_wait_for_user_input_event-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<robot_wait_for_user_input_event-request> is deprecated: use webots_ros-srv:robot_wait_for_user_input_event-request instead.")))

(cl:ensure-generic-function 'eventType-val :lambda-list '(m))
(cl:defmethod eventType-val ((m <robot_wait_for_user_input_event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:eventType-val is deprecated.  Use webots_ros-srv:eventType instead.")
  (eventType m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <robot_wait_for_user_input_event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:timeout-val is deprecated.  Use webots_ros-srv:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_wait_for_user_input_event-request>) ostream)
  "Serializes a message object of type '<robot_wait_for_user_input_event-request>"
  (cl:let* ((signed (cl:slot-value msg 'eventType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_wait_for_user_input_event-request>) istream)
  "Deserializes a message object of type '<robot_wait_for_user_input_event-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'eventType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_wait_for_user_input_event-request>)))
  "Returns string type for a service object of type '<robot_wait_for_user_input_event-request>"
  "webots_ros/robot_wait_for_user_input_eventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_wait_for_user_input_event-request)))
  "Returns string type for a service object of type 'robot_wait_for_user_input_event-request"
  "webots_ros/robot_wait_for_user_input_eventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_wait_for_user_input_event-request>)))
  "Returns md5sum for a message object of type '<robot_wait_for_user_input_event-request>"
  "117ed5fb1f5c37c2a398a290a90fc55d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_wait_for_user_input_event-request)))
  "Returns md5sum for a message object of type 'robot_wait_for_user_input_event-request"
  "117ed5fb1f5c37c2a398a290a90fc55d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_wait_for_user_input_event-request>)))
  "Returns full string definition for message of type '<robot_wait_for_user_input_event-request>"
  (cl:format cl:nil "int32 eventType~%int32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_wait_for_user_input_event-request)))
  "Returns full string definition for message of type 'robot_wait_for_user_input_event-request"
  (cl:format cl:nil "int32 eventType~%int32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_wait_for_user_input_event-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_wait_for_user_input_event-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_wait_for_user_input_event-request
    (cl:cons ':eventType (eventType msg))
    (cl:cons ':timeout (timeout msg))
))
;//! \htmlinclude robot_wait_for_user_input_event-response.msg.html

(cl:defclass <robot_wait_for_user_input_event-response> (roslisp-msg-protocol:ros-message)
  ((event
    :reader event
    :initarg :event
    :type cl:integer
    :initform 0))
)

(cl:defclass robot_wait_for_user_input_event-response (<robot_wait_for_user_input_event-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_wait_for_user_input_event-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_wait_for_user_input_event-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<robot_wait_for_user_input_event-response> is deprecated: use webots_ros-srv:robot_wait_for_user_input_event-response instead.")))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <robot_wait_for_user_input_event-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:event-val is deprecated.  Use webots_ros-srv:event instead.")
  (event m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_wait_for_user_input_event-response>) ostream)
  "Serializes a message object of type '<robot_wait_for_user_input_event-response>"
  (cl:let* ((signed (cl:slot-value msg 'event)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_wait_for_user_input_event-response>) istream)
  "Deserializes a message object of type '<robot_wait_for_user_input_event-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_wait_for_user_input_event-response>)))
  "Returns string type for a service object of type '<robot_wait_for_user_input_event-response>"
  "webots_ros/robot_wait_for_user_input_eventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_wait_for_user_input_event-response)))
  "Returns string type for a service object of type 'robot_wait_for_user_input_event-response"
  "webots_ros/robot_wait_for_user_input_eventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_wait_for_user_input_event-response>)))
  "Returns md5sum for a message object of type '<robot_wait_for_user_input_event-response>"
  "117ed5fb1f5c37c2a398a290a90fc55d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_wait_for_user_input_event-response)))
  "Returns md5sum for a message object of type 'robot_wait_for_user_input_event-response"
  "117ed5fb1f5c37c2a398a290a90fc55d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_wait_for_user_input_event-response>)))
  "Returns full string definition for message of type '<robot_wait_for_user_input_event-response>"
  (cl:format cl:nil "int32 event~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_wait_for_user_input_event-response)))
  "Returns full string definition for message of type 'robot_wait_for_user_input_event-response"
  (cl:format cl:nil "int32 event~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_wait_for_user_input_event-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_wait_for_user_input_event-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_wait_for_user_input_event-response
    (cl:cons ':event (event msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_wait_for_user_input_event)))
  'robot_wait_for_user_input_event-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_wait_for_user_input_event)))
  'robot_wait_for_user_input_event-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_wait_for_user_input_event)))
  "Returns string type for a service object of type '<robot_wait_for_user_input_event>"
  "webots_ros/robot_wait_for_user_input_event")