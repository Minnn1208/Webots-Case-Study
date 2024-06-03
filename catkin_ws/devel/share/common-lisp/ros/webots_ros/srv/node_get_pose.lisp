; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude node_get_pose-request.msg.html

(cl:defclass <node_get_pose-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:integer
    :initform 0)
   (from_node
    :reader from_node
    :initarg :from_node
    :type cl:integer
    :initform 0))
)

(cl:defclass node_get_pose-request (<node_get_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_pose-request> is deprecated: use webots_ros-srv:node_get_pose-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <node_get_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:node-val is deprecated.  Use webots_ros-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'from_node-val :lambda-list '(m))
(cl:defmethod from_node-val ((m <node_get_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:from_node-val is deprecated.  Use webots_ros-srv:from_node instead.")
  (from_node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_pose-request>) ostream)
  "Serializes a message object of type '<node_get_pose-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'from_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'from_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'from_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'from_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'from_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'from_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'from_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'from_node)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_pose-request>) istream)
  "Deserializes a message object of type '<node_get_pose-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'from_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'from_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'from_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'from_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'from_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'from_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'from_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'from_node)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_pose-request>)))
  "Returns string type for a service object of type '<node_get_pose-request>"
  "webots_ros/node_get_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_pose-request)))
  "Returns string type for a service object of type 'node_get_pose-request"
  "webots_ros/node_get_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_pose-request>)))
  "Returns md5sum for a message object of type '<node_get_pose-request>"
  "c971ec247720786da5fd4aa095defd52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_pose-request)))
  "Returns md5sum for a message object of type 'node_get_pose-request"
  "c971ec247720786da5fd4aa095defd52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_pose-request>)))
  "Returns full string definition for message of type '<node_get_pose-request>"
  (cl:format cl:nil "uint64 node~%uint64 from_node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_pose-request)))
  "Returns full string definition for message of type 'node_get_pose-request"
  (cl:format cl:nil "uint64 node~%uint64 from_node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_pose-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_pose-request
    (cl:cons ':node (node msg))
    (cl:cons ':from_node (from_node msg))
))
;//! \htmlinclude node_get_pose-response.msg.html

(cl:defclass <node_get_pose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass node_get_pose-response (<node_get_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_get_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_get_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<node_get_pose-response> is deprecated: use webots_ros-srv:node_get_pose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <node_get_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:pose-val is deprecated.  Use webots_ros-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_get_pose-response>) ostream)
  "Serializes a message object of type '<node_get_pose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_get_pose-response>) istream)
  "Deserializes a message object of type '<node_get_pose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_get_pose-response>)))
  "Returns string type for a service object of type '<node_get_pose-response>"
  "webots_ros/node_get_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_pose-response)))
  "Returns string type for a service object of type 'node_get_pose-response"
  "webots_ros/node_get_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_get_pose-response>)))
  "Returns md5sum for a message object of type '<node_get_pose-response>"
  "c971ec247720786da5fd4aa095defd52")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_get_pose-response)))
  "Returns md5sum for a message object of type 'node_get_pose-response"
  "c971ec247720786da5fd4aa095defd52")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_get_pose-response>)))
  "Returns full string definition for message of type '<node_get_pose-response>"
  (cl:format cl:nil "geometry_msgs/Transform pose~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_get_pose-response)))
  "Returns full string definition for message of type 'node_get_pose-response"
  (cl:format cl:nil "geometry_msgs/Transform pose~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_get_pose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_get_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'node_get_pose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'node_get_pose)))
  'node_get_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'node_get_pose)))
  'node_get_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_get_pose)))
  "Returns string type for a service object of type '<node_get_pose>"
  "webots_ros/node_get_pose")