; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude camera_get_zoom_info-request.msg.html

(cl:defclass <camera_get_zoom_info-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass camera_get_zoom_info-request (<camera_get_zoom_info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera_get_zoom_info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera_get_zoom_info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<camera_get_zoom_info-request> is deprecated: use webots_ros-srv:camera_get_zoom_info-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <camera_get_zoom_info-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera_get_zoom_info-request>) ostream)
  "Serializes a message object of type '<camera_get_zoom_info-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera_get_zoom_info-request>) istream)
  "Deserializes a message object of type '<camera_get_zoom_info-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera_get_zoom_info-request>)))
  "Returns string type for a service object of type '<camera_get_zoom_info-request>"
  "webots_ros/camera_get_zoom_infoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_get_zoom_info-request)))
  "Returns string type for a service object of type 'camera_get_zoom_info-request"
  "webots_ros/camera_get_zoom_infoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera_get_zoom_info-request>)))
  "Returns md5sum for a message object of type '<camera_get_zoom_info-request>"
  "5cc977379b136acabbe49ef90364861a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera_get_zoom_info-request)))
  "Returns md5sum for a message object of type 'camera_get_zoom_info-request"
  "5cc977379b136acabbe49ef90364861a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera_get_zoom_info-request>)))
  "Returns full string definition for message of type '<camera_get_zoom_info-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera_get_zoom_info-request)))
  "Returns full string definition for message of type 'camera_get_zoom_info-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera_get_zoom_info-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera_get_zoom_info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'camera_get_zoom_info-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude camera_get_zoom_info-response.msg.html

(cl:defclass <camera_get_zoom_info-response> (roslisp-msg-protocol:ros-message)
  ((minFov
    :reader minFov
    :initarg :minFov
    :type cl:float
    :initform 0.0)
   (maxFov
    :reader maxFov
    :initarg :maxFov
    :type cl:float
    :initform 0.0))
)

(cl:defclass camera_get_zoom_info-response (<camera_get_zoom_info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera_get_zoom_info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera_get_zoom_info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<camera_get_zoom_info-response> is deprecated: use webots_ros-srv:camera_get_zoom_info-response instead.")))

(cl:ensure-generic-function 'minFov-val :lambda-list '(m))
(cl:defmethod minFov-val ((m <camera_get_zoom_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:minFov-val is deprecated.  Use webots_ros-srv:minFov instead.")
  (minFov m))

(cl:ensure-generic-function 'maxFov-val :lambda-list '(m))
(cl:defmethod maxFov-val ((m <camera_get_zoom_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:maxFov-val is deprecated.  Use webots_ros-srv:maxFov instead.")
  (maxFov m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera_get_zoom_info-response>) ostream)
  "Serializes a message object of type '<camera_get_zoom_info-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'minFov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'maxFov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera_get_zoom_info-response>) istream)
  "Deserializes a message object of type '<camera_get_zoom_info-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minFov) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxFov) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera_get_zoom_info-response>)))
  "Returns string type for a service object of type '<camera_get_zoom_info-response>"
  "webots_ros/camera_get_zoom_infoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_get_zoom_info-response)))
  "Returns string type for a service object of type 'camera_get_zoom_info-response"
  "webots_ros/camera_get_zoom_infoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera_get_zoom_info-response>)))
  "Returns md5sum for a message object of type '<camera_get_zoom_info-response>"
  "5cc977379b136acabbe49ef90364861a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera_get_zoom_info-response)))
  "Returns md5sum for a message object of type 'camera_get_zoom_info-response"
  "5cc977379b136acabbe49ef90364861a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera_get_zoom_info-response>)))
  "Returns full string definition for message of type '<camera_get_zoom_info-response>"
  (cl:format cl:nil "float64 minFov~%float64 maxFov~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera_get_zoom_info-response)))
  "Returns full string definition for message of type 'camera_get_zoom_info-response"
  (cl:format cl:nil "float64 minFov~%float64 maxFov~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera_get_zoom_info-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera_get_zoom_info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'camera_get_zoom_info-response
    (cl:cons ':minFov (minFov msg))
    (cl:cons ':maxFov (maxFov msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'camera_get_zoom_info)))
  'camera_get_zoom_info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'camera_get_zoom_info)))
  'camera_get_zoom_info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_get_zoom_info)))
  "Returns string type for a service object of type '<camera_get_zoom_info>"
  "webots_ros/camera_get_zoom_info")