; Auto-generated. Do not edit!


(cl:in-package webots_demo-msg)


;//! \htmlinclude Goalname.msg.html

(cl:defclass <Goalname> (roslisp-msg-protocol:ros-message)
  ((goal_name
    :reader goal_name
    :initarg :goal_name
    :type cl:string
    :initform ""))
)

(cl:defclass Goalname (<Goalname>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Goalname>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Goalname)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_demo-msg:<Goalname> is deprecated: use webots_demo-msg:Goalname instead.")))

(cl:ensure-generic-function 'goal_name-val :lambda-list '(m))
(cl:defmethod goal_name-val ((m <Goalname>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_demo-msg:goal_name-val is deprecated.  Use webots_demo-msg:goal_name instead.")
  (goal_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Goalname>) ostream)
  "Serializes a message object of type '<Goalname>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Goalname>) istream)
  "Deserializes a message object of type '<Goalname>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Goalname>)))
  "Returns string type for a message object of type '<Goalname>"
  "webots_demo/Goalname")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Goalname)))
  "Returns string type for a message object of type 'Goalname"
  "webots_demo/Goalname")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Goalname>)))
  "Returns md5sum for a message object of type '<Goalname>"
  "254bb0d4018de3d871badc783fa8b12a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Goalname)))
  "Returns md5sum for a message object of type 'Goalname"
  "254bb0d4018de3d871badc783fa8b12a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Goalname>)))
  "Returns full string definition for message of type '<Goalname>"
  (cl:format cl:nil "string goal_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Goalname)))
  "Returns full string definition for message of type 'Goalname"
  (cl:format cl:nil "string goal_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Goalname>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goal_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Goalname>))
  "Converts a ROS message object to a list"
  (cl:list 'Goalname
    (cl:cons ':goal_name (goal_name msg))
))
