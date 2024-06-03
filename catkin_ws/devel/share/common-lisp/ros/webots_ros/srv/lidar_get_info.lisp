; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude lidar_get_info-request.msg.html

(cl:defclass <lidar_get_info-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass lidar_get_info-request (<lidar_get_info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_get_info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_get_info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<lidar_get_info-request> is deprecated: use webots_ros-srv:lidar_get_info-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <lidar_get_info-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_get_info-request>) ostream)
  "Serializes a message object of type '<lidar_get_info-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_get_info-request>) istream)
  "Deserializes a message object of type '<lidar_get_info-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_get_info-request>)))
  "Returns string type for a service object of type '<lidar_get_info-request>"
  "webots_ros/lidar_get_infoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_info-request)))
  "Returns string type for a service object of type 'lidar_get_info-request"
  "webots_ros/lidar_get_infoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_get_info-request>)))
  "Returns md5sum for a message object of type '<lidar_get_info-request>"
  "d69a9b3d17121f1bdd796764ea53059a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_get_info-request)))
  "Returns md5sum for a message object of type 'lidar_get_info-request"
  "d69a9b3d17121f1bdd796764ea53059a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_get_info-request>)))
  "Returns full string definition for message of type '<lidar_get_info-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_get_info-request)))
  "Returns full string definition for message of type 'lidar_get_info-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_get_info-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_get_info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_get_info-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude lidar_get_info-response.msg.html

(cl:defclass <lidar_get_info-response> (roslisp-msg-protocol:ros-message)
  ((horizontalResolution
    :reader horizontalResolution
    :initarg :horizontalResolution
    :type cl:integer
    :initform 0)
   (numberOfLayers
    :reader numberOfLayers
    :initarg :numberOfLayers
    :type cl:integer
    :initform 0)
   (fov
    :reader fov
    :initarg :fov
    :type cl:float
    :initform 0.0)
   (verticalFov
    :reader verticalFov
    :initarg :verticalFov
    :type cl:float
    :initform 0.0)
   (minRange
    :reader minRange
    :initarg :minRange
    :type cl:float
    :initform 0.0)
   (maxRange
    :reader maxRange
    :initarg :maxRange
    :type cl:float
    :initform 0.0))
)

(cl:defclass lidar_get_info-response (<lidar_get_info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lidar_get_info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lidar_get_info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<lidar_get_info-response> is deprecated: use webots_ros-srv:lidar_get_info-response instead.")))

(cl:ensure-generic-function 'horizontalResolution-val :lambda-list '(m))
(cl:defmethod horizontalResolution-val ((m <lidar_get_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:horizontalResolution-val is deprecated.  Use webots_ros-srv:horizontalResolution instead.")
  (horizontalResolution m))

(cl:ensure-generic-function 'numberOfLayers-val :lambda-list '(m))
(cl:defmethod numberOfLayers-val ((m <lidar_get_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:numberOfLayers-val is deprecated.  Use webots_ros-srv:numberOfLayers instead.")
  (numberOfLayers m))

(cl:ensure-generic-function 'fov-val :lambda-list '(m))
(cl:defmethod fov-val ((m <lidar_get_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:fov-val is deprecated.  Use webots_ros-srv:fov instead.")
  (fov m))

(cl:ensure-generic-function 'verticalFov-val :lambda-list '(m))
(cl:defmethod verticalFov-val ((m <lidar_get_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:verticalFov-val is deprecated.  Use webots_ros-srv:verticalFov instead.")
  (verticalFov m))

(cl:ensure-generic-function 'minRange-val :lambda-list '(m))
(cl:defmethod minRange-val ((m <lidar_get_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:minRange-val is deprecated.  Use webots_ros-srv:minRange instead.")
  (minRange m))

(cl:ensure-generic-function 'maxRange-val :lambda-list '(m))
(cl:defmethod maxRange-val ((m <lidar_get_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:maxRange-val is deprecated.  Use webots_ros-srv:maxRange instead.")
  (maxRange m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lidar_get_info-response>) ostream)
  "Serializes a message object of type '<lidar_get_info-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horizontalResolution)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'horizontalResolution)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'horizontalResolution)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'horizontalResolution)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfLayers)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numberOfLayers)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numberOfLayers)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numberOfLayers)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'verticalFov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'minRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'maxRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lidar_get_info-response>) istream)
  "Deserializes a message object of type '<lidar_get_info-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horizontalResolution)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'horizontalResolution)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'horizontalResolution)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'horizontalResolution)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numberOfLayers)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numberOfLayers)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numberOfLayers)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numberOfLayers)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fov) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'verticalFov) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minRange) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxRange) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lidar_get_info-response>)))
  "Returns string type for a service object of type '<lidar_get_info-response>"
  "webots_ros/lidar_get_infoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_info-response)))
  "Returns string type for a service object of type 'lidar_get_info-response"
  "webots_ros/lidar_get_infoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lidar_get_info-response>)))
  "Returns md5sum for a message object of type '<lidar_get_info-response>"
  "d69a9b3d17121f1bdd796764ea53059a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lidar_get_info-response)))
  "Returns md5sum for a message object of type 'lidar_get_info-response"
  "d69a9b3d17121f1bdd796764ea53059a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lidar_get_info-response>)))
  "Returns full string definition for message of type '<lidar_get_info-response>"
  (cl:format cl:nil "uint32 horizontalResolution~%uint32 numberOfLayers~%float64 fov~%float64 verticalFov~%float64 minRange~%float64 maxRange~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lidar_get_info-response)))
  "Returns full string definition for message of type 'lidar_get_info-response"
  (cl:format cl:nil "uint32 horizontalResolution~%uint32 numberOfLayers~%float64 fov~%float64 verticalFov~%float64 minRange~%float64 maxRange~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lidar_get_info-response>))
  (cl:+ 0
     4
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lidar_get_info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'lidar_get_info-response
    (cl:cons ':horizontalResolution (horizontalResolution msg))
    (cl:cons ':numberOfLayers (numberOfLayers msg))
    (cl:cons ':fov (fov msg))
    (cl:cons ':verticalFov (verticalFov msg))
    (cl:cons ':minRange (minRange msg))
    (cl:cons ':maxRange (maxRange msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'lidar_get_info)))
  'lidar_get_info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'lidar_get_info)))
  'lidar_get_info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lidar_get_info)))
  "Returns string type for a service object of type '<lidar_get_info>"
  "webots_ros/lidar_get_info")