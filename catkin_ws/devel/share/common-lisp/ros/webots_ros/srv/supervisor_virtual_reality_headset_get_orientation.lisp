; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude supervisor_virtual_reality_headset_get_orientation-request.msg.html

(cl:defclass <supervisor_virtual_reality_headset_get_orientation-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass supervisor_virtual_reality_headset_get_orientation-request (<supervisor_virtual_reality_headset_get_orientation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_virtual_reality_headset_get_orientation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_virtual_reality_headset_get_orientation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_virtual_reality_headset_get_orientation-request> is deprecated: use webots_ros-srv:supervisor_virtual_reality_headset_get_orientation-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <supervisor_virtual_reality_headset_get_orientation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_virtual_reality_headset_get_orientation-request>) ostream)
  "Serializes a message object of type '<supervisor_virtual_reality_headset_get_orientation-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_virtual_reality_headset_get_orientation-request>) istream)
  "Deserializes a message object of type '<supervisor_virtual_reality_headset_get_orientation-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_virtual_reality_headset_get_orientation-request>)))
  "Returns string type for a service object of type '<supervisor_virtual_reality_headset_get_orientation-request>"
  "webots_ros/supervisor_virtual_reality_headset_get_orientationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_virtual_reality_headset_get_orientation-request)))
  "Returns string type for a service object of type 'supervisor_virtual_reality_headset_get_orientation-request"
  "webots_ros/supervisor_virtual_reality_headset_get_orientationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_virtual_reality_headset_get_orientation-request>)))
  "Returns md5sum for a message object of type '<supervisor_virtual_reality_headset_get_orientation-request>"
  "1da5db090570556f67921a94715018da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_virtual_reality_headset_get_orientation-request)))
  "Returns md5sum for a message object of type 'supervisor_virtual_reality_headset_get_orientation-request"
  "1da5db090570556f67921a94715018da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_virtual_reality_headset_get_orientation-request>)))
  "Returns full string definition for message of type '<supervisor_virtual_reality_headset_get_orientation-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_virtual_reality_headset_get_orientation-request)))
  "Returns full string definition for message of type 'supervisor_virtual_reality_headset_get_orientation-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_virtual_reality_headset_get_orientation-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_virtual_reality_headset_get_orientation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_virtual_reality_headset_get_orientation-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude supervisor_virtual_reality_headset_get_orientation-response.msg.html

(cl:defclass <supervisor_virtual_reality_headset_get_orientation-response> (roslisp-msg-protocol:ros-message)
  ((orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass supervisor_virtual_reality_headset_get_orientation-response (<supervisor_virtual_reality_headset_get_orientation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <supervisor_virtual_reality_headset_get_orientation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'supervisor_virtual_reality_headset_get_orientation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<supervisor_virtual_reality_headset_get_orientation-response> is deprecated: use webots_ros-srv:supervisor_virtual_reality_headset_get_orientation-response instead.")))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <supervisor_virtual_reality_headset_get_orientation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:orientation-val is deprecated.  Use webots_ros-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <supervisor_virtual_reality_headset_get_orientation-response>) ostream)
  "Serializes a message object of type '<supervisor_virtual_reality_headset_get_orientation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <supervisor_virtual_reality_headset_get_orientation-response>) istream)
  "Deserializes a message object of type '<supervisor_virtual_reality_headset_get_orientation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<supervisor_virtual_reality_headset_get_orientation-response>)))
  "Returns string type for a service object of type '<supervisor_virtual_reality_headset_get_orientation-response>"
  "webots_ros/supervisor_virtual_reality_headset_get_orientationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_virtual_reality_headset_get_orientation-response)))
  "Returns string type for a service object of type 'supervisor_virtual_reality_headset_get_orientation-response"
  "webots_ros/supervisor_virtual_reality_headset_get_orientationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<supervisor_virtual_reality_headset_get_orientation-response>)))
  "Returns md5sum for a message object of type '<supervisor_virtual_reality_headset_get_orientation-response>"
  "1da5db090570556f67921a94715018da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'supervisor_virtual_reality_headset_get_orientation-response)))
  "Returns md5sum for a message object of type 'supervisor_virtual_reality_headset_get_orientation-response"
  "1da5db090570556f67921a94715018da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<supervisor_virtual_reality_headset_get_orientation-response>)))
  "Returns full string definition for message of type '<supervisor_virtual_reality_headset_get_orientation-response>"
  (cl:format cl:nil "geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'supervisor_virtual_reality_headset_get_orientation-response)))
  "Returns full string definition for message of type 'supervisor_virtual_reality_headset_get_orientation-response"
  (cl:format cl:nil "geometry_msgs/Quaternion orientation~%~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <supervisor_virtual_reality_headset_get_orientation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <supervisor_virtual_reality_headset_get_orientation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'supervisor_virtual_reality_headset_get_orientation-response
    (cl:cons ':orientation (orientation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'supervisor_virtual_reality_headset_get_orientation)))
  'supervisor_virtual_reality_headset_get_orientation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'supervisor_virtual_reality_headset_get_orientation)))
  'supervisor_virtual_reality_headset_get_orientation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'supervisor_virtual_reality_headset_get_orientation)))
  "Returns string type for a service object of type '<supervisor_virtual_reality_headset_get_orientation>"
  "webots_ros/supervisor_virtual_reality_headset_get_orientation")