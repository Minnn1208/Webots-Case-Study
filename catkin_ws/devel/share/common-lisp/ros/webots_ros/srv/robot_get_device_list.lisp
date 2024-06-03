; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude robot_get_device_list-request.msg.html

(cl:defclass <robot_get_device_list-request> (roslisp-msg-protocol:ros-message)
  ((ask
    :reader ask
    :initarg :ask
    :type cl:fixnum
    :initform 0))
)

(cl:defclass robot_get_device_list-request (<robot_get_device_list-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_get_device_list-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_get_device_list-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<robot_get_device_list-request> is deprecated: use webots_ros-srv:robot_get_device_list-request instead.")))

(cl:ensure-generic-function 'ask-val :lambda-list '(m))
(cl:defmethod ask-val ((m <robot_get_device_list-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:ask-val is deprecated.  Use webots_ros-srv:ask instead.")
  (ask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_get_device_list-request>) ostream)
  "Serializes a message object of type '<robot_get_device_list-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_get_device_list-request>) istream)
  "Deserializes a message object of type '<robot_get_device_list-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ask)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_get_device_list-request>)))
  "Returns string type for a service object of type '<robot_get_device_list-request>"
  "webots_ros/robot_get_device_listRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_get_device_list-request)))
  "Returns string type for a service object of type 'robot_get_device_list-request"
  "webots_ros/robot_get_device_listRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_get_device_list-request>)))
  "Returns md5sum for a message object of type '<robot_get_device_list-request>"
  "463f6db5695c1f090f76a453a11e7381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_get_device_list-request)))
  "Returns md5sum for a message object of type 'robot_get_device_list-request"
  "463f6db5695c1f090f76a453a11e7381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_get_device_list-request>)))
  "Returns full string definition for message of type '<robot_get_device_list-request>"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_get_device_list-request)))
  "Returns full string definition for message of type 'robot_get_device_list-request"
  (cl:format cl:nil "uint8 ask~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_get_device_list-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_get_device_list-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_get_device_list-request
    (cl:cons ':ask (ask msg))
))
;//! \htmlinclude robot_get_device_list-response.msg.html

(cl:defclass <robot_get_device_list-response> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass robot_get_device_list-response (<robot_get_device_list-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robot_get_device_list-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robot_get_device_list-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<robot_get_device_list-response> is deprecated: use webots_ros-srv:robot_get_device_list-response instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <robot_get_device_list-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:list-val is deprecated.  Use webots_ros-srv:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robot_get_device_list-response>) ostream)
  "Serializes a message object of type '<robot_get_device_list-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robot_get_device_list-response>) istream)
  "Deserializes a message object of type '<robot_get_device_list-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robot_get_device_list-response>)))
  "Returns string type for a service object of type '<robot_get_device_list-response>"
  "webots_ros/robot_get_device_listResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_get_device_list-response)))
  "Returns string type for a service object of type 'robot_get_device_list-response"
  "webots_ros/robot_get_device_listResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robot_get_device_list-response>)))
  "Returns md5sum for a message object of type '<robot_get_device_list-response>"
  "463f6db5695c1f090f76a453a11e7381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robot_get_device_list-response)))
  "Returns md5sum for a message object of type 'robot_get_device_list-response"
  "463f6db5695c1f090f76a453a11e7381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robot_get_device_list-response>)))
  "Returns full string definition for message of type '<robot_get_device_list-response>"
  (cl:format cl:nil "string[] list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robot_get_device_list-response)))
  "Returns full string definition for message of type 'robot_get_device_list-response"
  (cl:format cl:nil "string[] list~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robot_get_device_list-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robot_get_device_list-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robot_get_device_list-response
    (cl:cons ':list (list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robot_get_device_list)))
  'robot_get_device_list-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robot_get_device_list)))
  'robot_get_device_list-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robot_get_device_list)))
  "Returns string type for a service object of type '<robot_get_device_list>"
  "webots_ros/robot_get_device_list")