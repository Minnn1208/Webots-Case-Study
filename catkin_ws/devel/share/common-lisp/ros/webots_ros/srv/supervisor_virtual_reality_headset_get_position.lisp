; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude supervisor_virtual_reality_headset_get_position-request.msg.html

(cl:defclass <supervisor_virtual_reality_headset_get_position-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass supervisor_virtual_reality_headset_get_position-request (<supervisor_virtual_reality_headset_get_position-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_virtual_reality_headset_get_position-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_virtual_reality_headset_get_position-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_virtual_reality_headset_get_position-request> is deprecated: use webots_ros-srv:supervisor_virtual_reality_headset_get_position-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <supervisor_virtual_reality_headset_get_position-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_virtual_reality_headset_get_position-request>) ostream)
  "Serializes a message object of type '<supervisor_virtual_reality_headset_get_position-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_virtual_reality_headset_get_position-request>) istream)
  "Deserializes a message object of type '<supervisor_virtual_reality_headset_get_position-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_virtual_reality_headset_get_position-request>)))
  "Returns string type for a service object of type '<supervisor_virtual_reality_headset_get_position-request>"
  "webots_ros/supervisor_virtual_reality_headset_get_positionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_virtual_reality_headset_get_position-request)))
  "Returns string type for a service object of type 'supervisor_virtual_reality_headset_get_position-request"
  "webots_ros/supervisor_virtual_reality_headset_get_positionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_virtual_reality_headset_get_position-request>)))
  "Returns md5sum for a message object of type '<supervisor_virtual_reality_headset_get_position-request>"
  "a1afe95e0bfbfc2663c9e2313392f01d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_virtual_reality_headset_get_position-request)))
  "Returns md5sum for a message object of type 'supervisor_virtual_reality_headset_get_position-request"
  "a1afe95e0bfbfc2663c9e2313392f01d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_virtual_reality_headset_get_position-request>)))
  "Returns full string definition for message of type '<supervisor_virtual_reality_headset_get_position-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_virtual_reality_headset_get_position-request)))
  "Returns full string definition for message of type 'supervisor_virtual_reality_headset_get_position-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_virtual_reality_headset_get_position-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_virtual_reality_headset_get_position-request>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_virtual_reality_headset_get_position-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude supervisor_virtual_reality_headset_get_position-response.msg.html

(cl:defclass <supervisor_virtual_reality_headset_get_position-response> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass supervisor_virtual_reality_headset_get_position-response (<supervisor_virtual_reality_headset_get_position-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_virtual_reality_headset_get_position-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_virtual_reality_headset_get_position-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_virtual_reality_headset_get_position-response> is deprecated: use webots_ros-srv:supervisor_virtual_reality_headset_get_position-response instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <supervisor_virtual_reality_headset_get_position-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:position-val is deprecated.  Use webots_ros-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_virtual_reality_headset_get_position-response>) ostream)
  "Serializes a message object of type '<supervisor_virtual_reality_headset_get_position-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_virtual_reality_headset_get_position-response>) istream)
  "Deserializes a message object of type '<supervisor_virtual_reality_headset_get_position-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_virtual_reality_headset_get_position-response>)))
  "Returns string type for a service object of type '<supervisor_virtual_reality_headset_get_position-response>"
  "webots_ros/supervisor_virtual_reality_headset_get_positionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_virtual_reality_headset_get_position-response)))
  "Returns string type for a service object of type 'supervisor_virtual_reality_headset_get_position-response"
  "webots_ros/supervisor_virtual_reality_headset_get_positionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_virtual_reality_headset_get_position-response>)))
  "Returns md5sum for a message object of type '<supervisor_virtual_reality_headset_get_position-response>"
  "a1afe95e0bfbfc2663c9e2313392f01d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_virtual_reality_headset_get_position-response)))
  "Returns md5sum for a message object of type 'supervisor_virtual_reality_headset_get_position-response"
  "a1afe95e0bfbfc2663c9e2313392f01d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_virtual_reality_headset_get_position-response>)))
  "Returns full string definition for message of type '<supervisor_virtual_reality_headset_get_position-response>"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_virtual_reality_headset_get_position-response)))
  "Returns full string definition for message of type 'supervisor_virtual_reality_headset_get_position-response"
  (cl:format cl:nil "geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_virtual_reality_headset_get_position-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_virtual_reality_headset_get_position-response>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_virtual_reality_headset_get_position-response
    (cl:cons ':position (position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'supervisor_virtual_reality_headset_get_position)))
  'supervisor_virtual_reality_headset_get_position-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'supervisor_virtual_reality_headset_get_position)))
  'supervisor_virtual_reality_headset_get_position-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_virtual_reality_headset_get_position)))
  "Returns string type for a service object of type '<supervisor_virtual_reality_headset_get_position>"
  "webots_ros/supervisor_virtual_reality_headset_get_position")