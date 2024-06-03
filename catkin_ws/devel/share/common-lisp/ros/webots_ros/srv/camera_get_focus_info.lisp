; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude camera_get_focus_info-request.msg.html

(cl:defclass <camera_get_focus_info-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass camera_get_focus_info-request (<camera_get_focus_info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera_get_focus_info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera_get_focus_info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<camera_get_focus_info-request> is deprecated: use webots_ros-srv:camera_get_focus_info-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <camera_get_focus_info-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera_get_focus_info-request>) ostream)
  "Serializes a message object of type '<camera_get_focus_info-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera_get_focus_info-request>) istream)
  "Deserializes a message object of type '<camera_get_focus_info-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera_get_focus_info-request>)))
  "Returns string type for a service object of type '<camera_get_focus_info-request>"
  "webots_ros/camera_get_focus_infoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_get_focus_info-request)))
  "Returns string type for a service object of type 'camera_get_focus_info-request"
  "webots_ros/camera_get_focus_infoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera_get_focus_info-request>)))
  "Returns md5sum for a message object of type '<camera_get_focus_info-request>"
  "b515f92c1f91e19619caa437c4da4d85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera_get_focus_info-request)))
  "Returns md5sum for a message object of type 'camera_get_focus_info-request"
  "b515f92c1f91e19619caa437c4da4d85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera_get_focus_info-request>)))
  "Returns full string definition for message of type '<camera_get_focus_info-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera_get_focus_info-request)))
  "Returns full string definition for message of type 'camera_get_focus_info-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera_get_focus_info-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera_get_focus_info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'camera_get_focus_info-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude camera_get_focus_info-response.msg.html

(cl:defclass <camera_get_focus_info-response> (roslisp-msg-protocol:ros-message)
  ((focalLength
    :reader focalLength
    :initarg :focalLength
    :type cl:float
    :initform 0.0)
   (focalDistance
    :reader focalDistance
    :initarg :focalDistance
    :type cl:float
    :initform 0.0)
   (maxFocalDistance
    :reader maxFocalDistance
    :initarg :maxFocalDistance
    :type cl:float
    :initform 0.0)
   (minFocalDistance
    :reader minFocalDistance
    :initarg :minFocalDistance
    :type cl:float
    :initform 0.0))
)

(cl:defclass camera_get_focus_info-response (<camera_get_focus_info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera_get_focus_info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera_get_focus_info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<camera_get_focus_info-response> is deprecated: use webots_ros-srv:camera_get_focus_info-response instead.")))

(cl:ensure-generic-function 'focalLength-val :lambda-list '(m))
(cl:defmethod focalLength-val ((m <camera_get_focus_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:focalLength-val is deprecated.  Use webots_ros-srv:focalLength instead.")
  (focalLength m))

(cl:ensure-generic-function 'focalDistance-val :lambda-list '(m))
(cl:defmethod focalDistance-val ((m <camera_get_focus_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:focalDistance-val is deprecated.  Use webots_ros-srv:focalDistance instead.")
  (focalDistance m))

(cl:ensure-generic-function 'maxFocalDistance-val :lambda-list '(m))
(cl:defmethod maxFocalDistance-val ((m <camera_get_focus_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:maxFocalDistance-val is deprecated.  Use webots_ros-srv:maxFocalDistance instead.")
  (maxFocalDistance m))

(cl:ensure-generic-function 'minFocalDistance-val :lambda-list '(m))
(cl:defmethod minFocalDistance-val ((m <camera_get_focus_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:minFocalDistance-val is deprecated.  Use webots_ros-srv:minFocalDistance instead.")
  (minFocalDistance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera_get_focus_info-response>) ostream)
  "Serializes a message object of type '<camera_get_focus_info-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'focalLength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'focalDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'maxFocalDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'minFocalDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera_get_focus_info-response>) istream)
  "Deserializes a message object of type '<camera_get_focus_info-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'focalLength) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'focalDistance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxFocalDistance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minFocalDistance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera_get_focus_info-response>)))
  "Returns string type for a service object of type '<camera_get_focus_info-response>"
  "webots_ros/camera_get_focus_infoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_get_focus_info-response)))
  "Returns string type for a service object of type 'camera_get_focus_info-response"
  "webots_ros/camera_get_focus_infoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera_get_focus_info-response>)))
  "Returns md5sum for a message object of type '<camera_get_focus_info-response>"
  "b515f92c1f91e19619caa437c4da4d85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera_get_focus_info-response)))
  "Returns md5sum for a message object of type 'camera_get_focus_info-response"
  "b515f92c1f91e19619caa437c4da4d85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera_get_focus_info-response>)))
  "Returns full string definition for message of type '<camera_get_focus_info-response>"
  (cl:format cl:nil "float64 focalLength~%float64 focalDistance~%float64 maxFocalDistance~%float64 minFocalDistance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera_get_focus_info-response)))
  "Returns full string definition for message of type 'camera_get_focus_info-response"
  (cl:format cl:nil "float64 focalLength~%float64 focalDistance~%float64 maxFocalDistance~%float64 minFocalDistance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera_get_focus_info-response>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera_get_focus_info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'camera_get_focus_info-response
    (cl:cons ':focalLength (focalLength msg))
    (cl:cons ':focalDistance (focalDistance msg))
    (cl:cons ':maxFocalDistance (maxFocalDistance msg))
    (cl:cons ':minFocalDistance (minFocalDistance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'camera_get_focus_info)))
  'camera_get_focus_info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'camera_get_focus_info)))
  'camera_get_focus_info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera_get_focus_info)))
  "Returns string type for a service object of type '<camera_get_focus_info>"
  "webots_ros/camera_get_focus_info")