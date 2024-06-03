; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude receiver_get_emitter_direction-request.msg.html

(cl:defclass <receiver_get_emitter_direction-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass receiver_get_emitter_direction-request (<receiver_get_emitter_direction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <receiver_get_emitter_direction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'receiver_get_emitter_direction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<receiver_get_emitter_direction-request> is deprecated: use webots_ros-srv:receiver_get_emitter_direction-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <receiver_get_emitter_direction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <receiver_get_emitter_direction-request>) ostream)
  "Serializes a message object of type '<receiver_get_emitter_direction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <receiver_get_emitter_direction-request>) istream)
  "Deserializes a message object of type '<receiver_get_emitter_direction-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<receiver_get_emitter_direction-request>)))
  "Returns string type for a service object of type '<receiver_get_emitter_direction-request>"
  "webots_ros/receiver_get_emitter_directionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'receiver_get_emitter_direction-request)))
  "Returns string type for a service object of type 'receiver_get_emitter_direction-request"
  "webots_ros/receiver_get_emitter_directionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<receiver_get_emitter_direction-request>)))
  "Returns md5sum for a message object of type '<receiver_get_emitter_direction-request>"
  "cad5a90bedce22b568c949b40e9cc6e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'receiver_get_emitter_direction-request)))
  "Returns md5sum for a message object of type 'receiver_get_emitter_direction-request"
  "cad5a90bedce22b568c949b40e9cc6e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<receiver_get_emitter_direction-request>)))
  "Returns full string definition for message of type '<receiver_get_emitter_direction-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'receiver_get_emitter_direction-request)))
  "Returns full string definition for message of type 'receiver_get_emitter_direction-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <receiver_get_emitter_direction-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <receiver_get_emitter_direction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'receiver_get_emitter_direction-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude receiver_get_emitter_direction-response.msg.html

(cl:defclass <receiver_get_emitter_direction-response> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass receiver_get_emitter_direction-response (<receiver_get_emitter_direction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <receiver_get_emitter_direction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'receiver_get_emitter_direction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<receiver_get_emitter_direction-response> is deprecated: use webots_ros-srv:receiver_get_emitter_direction-response instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <receiver_get_emitter_direction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:direction-val is deprecated.  Use webots_ros-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <receiver_get_emitter_direction-response>) ostream)
  "Serializes a message object of type '<receiver_get_emitter_direction-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <receiver_get_emitter_direction-response>) istream)
  "Deserializes a message object of type '<receiver_get_emitter_direction-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'direction) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'direction)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<receiver_get_emitter_direction-response>)))
  "Returns string type for a service object of type '<receiver_get_emitter_direction-response>"
  "webots_ros/receiver_get_emitter_directionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'receiver_get_emitter_direction-response)))
  "Returns string type for a service object of type 'receiver_get_emitter_direction-response"
  "webots_ros/receiver_get_emitter_directionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<receiver_get_emitter_direction-response>)))
  "Returns md5sum for a message object of type '<receiver_get_emitter_direction-response>"
  "cad5a90bedce22b568c949b40e9cc6e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'receiver_get_emitter_direction-response)))
  "Returns md5sum for a message object of type 'receiver_get_emitter_direction-response"
  "cad5a90bedce22b568c949b40e9cc6e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<receiver_get_emitter_direction-response>)))
  "Returns full string definition for message of type '<receiver_get_emitter_direction-response>"
  (cl:format cl:nil "float64[] direction~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'receiver_get_emitter_direction-response)))
  "Returns full string definition for message of type 'receiver_get_emitter_direction-response"
  (cl:format cl:nil "float64[] direction~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <receiver_get_emitter_direction-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'direction) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <receiver_get_emitter_direction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'receiver_get_emitter_direction-response
    (cl:cons ':direction (direction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'receiver_get_emitter_direction)))
  'receiver_get_emitter_direction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'receiver_get_emitter_direction)))
  'receiver_get_emitter_direction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'receiver_get_emitter_direction)))
  "Returns string type for a service object of type '<receiver_get_emitter_direction>"
  "webots_ros/receiver_get_emitter_direction")