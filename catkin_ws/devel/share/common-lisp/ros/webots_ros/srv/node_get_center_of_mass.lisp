; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_center_of_mass-request.msg.html

(cl:defclass <node_get_center_of_mass-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_center_of_mass-request (<node_get_center_of_mass-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_center_of_mass-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_center_of_mass-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_center_of_mass-request> is deprecated: use webots_ros-srv:node_get_center_of_mass-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_center_of_mass-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_center_of_mass-request>) ostream)
  "Serializes a message object of type '<node_get_center_of_mass-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_center_of_mass-request>) istream)
  "Deserializes a message object of type '<node_get_center_of_mass-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_center_of_mass-request>)))
  "Returns string type for a service object of type '<node_get_center_of_mass-request>"
  "webots_ros/node_get_center_of_massRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_center_of_mass-request)))
  "Returns string type for a service object of type 'node_get_center_of_mass-request"
  "webots_ros/node_get_center_of_massRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_center_of_mass-request>)))
  "Returns md5sum for a message object of type '<node_get_center_of_mass-request>"
  "08baa9a118e7086ad4f02f73fae3dd80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_center_of_mass-request)))
  "Returns md5sum for a message object of type 'node_get_center_of_mass-request"
  "08baa9a118e7086ad4f02f73fae3dd80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_center_of_mass-request>)))
  "Returns full string definition for message of type '<node_get_center_of_mass-request>"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_center_of_mass-request)))
  "Returns full string definition for message of type 'node_get_center_of_mass-request"
  (cl:format cl:nil "uint64 node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_center_of_mass-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_center_of_mass-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_center_of_mass-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude node_get_center_of_mass-response.msg.html

(cl:defclass <node_get_center_of_mass-response> (roslisp-msg-protocol:ros-message)
  ((centerOfMass
    :reader centerOfMass
    :initarg :centerOfMass
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass node_get_center_of_mass-response (<node_get_center_of_mass-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_center_of_mass-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_center_of_mass-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_center_of_mass-response> is deprecated: use webots_ros-srv:node_get_center_of_mass-response instead.")))

(cl:ensure-generic-function 'centerOfMass-val :lambda-list '(m))
(cl:defmethod centerOfMass-val ((m <node_get_center_of_mass-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:centerOfMass-val is deprecated.  Use webots_ros-srv:centerOfMass instead.")
  (centerOfMass m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_center_of_mass-response>) ostream)
  "Serializes a message object of type '<node_get_center_of_mass-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centerOfMass) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_center_of_mass-response>) istream)
  "Deserializes a message object of type '<node_get_center_of_mass-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centerOfMass) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_center_of_mass-response>)))
  "Returns string type for a service object of type '<node_get_center_of_mass-response>"
  "webots_ros/node_get_center_of_massResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_center_of_mass-response)))
  "Returns string type for a service object of type 'node_get_center_of_mass-response"
  "webots_ros/node_get_center_of_massResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_center_of_mass-response>)))
  "Returns md5sum for a message object of type '<node_get_center_of_mass-response>"
  "08baa9a118e7086ad4f02f73fae3dd80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_center_of_mass-response)))
  "Returns md5sum for a message object of type 'node_get_center_of_mass-response"
  "08baa9a118e7086ad4f02f73fae3dd80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_center_of_mass-response>)))
  "Returns full string definition for message of type '<node_get_center_of_mass-response>"
  (cl:format cl:nil "geometry_msgs/Point centerOfMass~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_center_of_mass-response)))
  "Returns full string definition for message of type 'node_get_center_of_mass-response"
  (cl:format cl:nil "geometry_msgs/Point centerOfMass~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_center_of_mass-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centerOfMass))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_center_of_mass-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_center_of_mass-response
    (cl:cons ':centerOfMass (centerOfMass msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_center_of_mass)))
  'node_get_center_of_mass-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_center_of_mass)))
  'node_get_center_of_mass-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_center_of_mass)))
  "Returns string type for a service object of type '<node_get_center_of_mass>"
  "webots_ros/node_get_center_of_mass")