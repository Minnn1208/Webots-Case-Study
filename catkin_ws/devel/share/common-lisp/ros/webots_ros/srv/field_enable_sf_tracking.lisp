; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude field_enable_sf_tracking-request.msg.html

(cl:defclass <field_enable_sf_tracking-request> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0)
   (sampling_period
    :reader sampling_period
    :initarg :sampling_period
    :type cl:integer
    :initform 0))
)

(cl:defclass field_enable_sf_tracking-request (<field_enable_sf_tracking-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_enable_sf_tracking-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_enable_sf_tracking-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_enable_sf_tracking-request> is deprecated: use webots_ros-srv:field_enable_sf_tracking-request instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <field_enable_sf_tracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))

(cl:ensure-generic-function 'sampling_period-val :lambda-list '(m))
(cl:defmethod sampling_period-val ((m <field_enable_sf_tracking-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:sampling_period-val is deprecated.  Use webots_ros-srv:sampling_period instead.")
  (sampling_period m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_enable_sf_tracking-request>) ostream)
  "Serializes a message object of type '<field_enable_sf_tracking-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sampling_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sampling_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sampling_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sampling_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sampling_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sampling_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sampling_period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sampling_period)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_enable_sf_tracking-request>) istream)
  "Deserializes a message object of type '<field_enable_sf_tracking-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sampling_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sampling_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sampling_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sampling_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sampling_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sampling_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sampling_period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sampling_period)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_enable_sf_tracking-request>)))
  "Returns string type for a service object of type '<field_enable_sf_tracking-request>"
  "webots_ros/field_enable_sf_trackingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_enable_sf_tracking-request)))
  "Returns string type for a service object of type 'field_enable_sf_tracking-request"
  "webots_ros/field_enable_sf_trackingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_enable_sf_tracking-request>)))
  "Returns md5sum for a message object of type '<field_enable_sf_tracking-request>"
  "a0c3f2587feb608a950aa131294d6a32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_enable_sf_tracking-request)))
  "Returns md5sum for a message object of type 'field_enable_sf_tracking-request"
  "a0c3f2587feb608a950aa131294d6a32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_enable_sf_tracking-request>)))
  "Returns full string definition for message of type '<field_enable_sf_tracking-request>"
  (cl:format cl:nil "uint64 field~%uint64 sampling_period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_enable_sf_tracking-request)))
  "Returns full string definition for message of type 'field_enable_sf_tracking-request"
  (cl:format cl:nil "uint64 field~%uint64 sampling_period~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_enable_sf_tracking-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_enable_sf_tracking-request>))
  "Converts a ROS message object to a list"
  (cl:list 'field_enable_sf_tracking-request
    (cl:cons ':field (field msg))
    (cl:cons ':sampling_period (sampling_period msg))
))
;//! \htmlinclude field_enable_sf_tracking-response.msg.html

(cl:defclass <field_enable_sf_tracking-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass field_enable_sf_tracking-response (<field_enable_sf_tracking-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_enable_sf_tracking-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_enable_sf_tracking-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_enable_sf_tracking-response> is deprecated: use webots_ros-srv:field_enable_sf_tracking-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <field_enable_sf_tracking-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:success-val is deprecated.  Use webots_ros-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_enable_sf_tracking-response>) ostream)
  "Serializes a message object of type '<field_enable_sf_tracking-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_enable_sf_tracking-response>) istream)
  "Deserializes a message object of type '<field_enable_sf_tracking-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_enable_sf_tracking-response>)))
  "Returns string type for a service object of type '<field_enable_sf_tracking-response>"
  "webots_ros/field_enable_sf_trackingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_enable_sf_tracking-response)))
  "Returns string type for a service object of type 'field_enable_sf_tracking-response"
  "webots_ros/field_enable_sf_trackingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_enable_sf_tracking-response>)))
  "Returns md5sum for a message object of type '<field_enable_sf_tracking-response>"
  "a0c3f2587feb608a950aa131294d6a32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_enable_sf_tracking-response)))
  "Returns md5sum for a message object of type 'field_enable_sf_tracking-response"
  "a0c3f2587feb608a950aa131294d6a32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_enable_sf_tracking-response>)))
  "Returns full string definition for message of type '<field_enable_sf_tracking-response>"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_enable_sf_tracking-response)))
  "Returns full string definition for message of type 'field_enable_sf_tracking-response"
  (cl:format cl:nil "int8 success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_enable_sf_tracking-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_enable_sf_tracking-response>))
  "Converts a ROS message object to a list"
  (cl:list 'field_enable_sf_tracking-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'field_enable_sf_tracking)))
  'field_enable_sf_tracking-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'field_enable_sf_tracking)))
  'field_enable_sf_tracking-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_enable_sf_tracking)))
  "Returns string type for a service object of type '<field_enable_sf_tracking>"
  "webots_ros/field_enable_sf_tracking")