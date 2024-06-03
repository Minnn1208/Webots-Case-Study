; Auto-generated. Do not edit!


(cl:in-package webots_ros-msg)


;//! \htmlinclude ContactPoint.msg.html

(cl:defclass <ContactPoint> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (node_id
    :reader node_id
    :initarg :node_id
    :type cl:integer
    :initform 0))
)

(cl:defclass ContactPoint (<ContactPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContactPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContactPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-msg:<ContactPoint> is deprecated: use webots_ros-msg:ContactPoint instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <ContactPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-msg:point-val is deprecated.  Use webots_ros-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <ContactPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-msg:node_id-val is deprecated.  Use webots_ros-msg:node_id instead.")
  (node_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContactPoint>) ostream)
  "Serializes a message object of type '<ContactPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let* ((signed (cl:slot-value msg 'node_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContactPoint>) istream)
  "Deserializes a message object of type '<ContactPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContactPoint>)))
  "Returns string type for a message object of type '<ContactPoint>"
  "webots_ros/ContactPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContactPoint)))
  "Returns string type for a message object of type 'ContactPoint"
  "webots_ros/ContactPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContactPoint>)))
  "Returns md5sum for a message object of type '<ContactPoint>"
  "c401f69a1503004a9e4aec8ae5ec3e17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContactPoint)))
  "Returns md5sum for a message object of type 'ContactPoint"
  "c401f69a1503004a9e4aec8ae5ec3e17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContactPoint>)))
  "Returns full string definition for message of type '<ContactPoint>"
  (cl:format cl:nil "geometry_msgs/Point point~%int32 node_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContactPoint)))
  "Returns full string definition for message of type 'ContactPoint"
  (cl:format cl:nil "geometry_msgs/Point point~%int32 node_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContactPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContactPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ContactPoint
    (cl:cons ':point (point msg))
    (cl:cons ':node_id (node_id msg))
))
