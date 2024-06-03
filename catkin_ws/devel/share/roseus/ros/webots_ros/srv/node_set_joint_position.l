;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_set_joint_position)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_set_joint_position (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_SET_JOINT_POSITION")
  (make-package "WEBOTS_ROS::NODE_SET_JOINT_POSITION"))
(unless (find-package "WEBOTS_ROS::NODE_SET_JOINT_POSITIONREQUEST")
  (make-package "WEBOTS_ROS::NODE_SET_JOINT_POSITIONREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_SET_JOINT_POSITIONRESPONSE")
  (make-package "WEBOTS_ROS::NODE_SET_JOINT_POSITIONRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_set_joint_positionRequest
  :super ros::object
  :slots (_node _position _index ))

(defmethod webots_ros::node_set_joint_positionRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:position __position) 0.0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _position (float __position))
   (setq _index (round __index))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; float64 _position
    8
    ;; int32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _node
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _node (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _node) (= (length (_node . bv)) 2)) ;; bignum
              (write-long (ash (elt (_node . bv) 0) 0) s)
              (write-long (ash (elt (_node . bv) 1) -1) s))
             ((and (class _node) (= (length (_node . bv)) 1)) ;; big1
              (write-long (elt (_node . bv) 0) s)
              (write-long (if (>= _node 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _node s)(write-long (if (>= _node 0) 0 #xffffffff) s)))
     ;; float64 _position
       (sys::poke _position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _node
     
#+(or :alpha :irix6 :x86_64)
      (setf _node (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _node (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _position
     (setq _position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::node_set_joint_positionResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::node_set_joint_positionResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_set_joint_position
  :super ros::object
  :slots ())

(setf (get webots_ros::node_set_joint_position :md5sum-) "5c6d60bc617f1348200743f9a8544085")
(setf (get webots_ros::node_set_joint_position :datatype-) "webots_ros/node_set_joint_position")
(setf (get webots_ros::node_set_joint_position :request) webots_ros::node_set_joint_positionRequest)
(setf (get webots_ros::node_set_joint_position :response) webots_ros::node_set_joint_positionResponse)

(defmethod webots_ros::node_set_joint_positionRequest
  (:response () (instance webots_ros::node_set_joint_positionResponse :init)))

(setf (get webots_ros::node_set_joint_positionRequest :md5sum-) "5c6d60bc617f1348200743f9a8544085")
(setf (get webots_ros::node_set_joint_positionRequest :datatype-) "webots_ros/node_set_joint_positionRequest")
(setf (get webots_ros::node_set_joint_positionRequest :definition-)
      "uint64 node
float64 position
int32 index
---
bool success

")

(setf (get webots_ros::node_set_joint_positionResponse :md5sum-) "5c6d60bc617f1348200743f9a8544085")
(setf (get webots_ros::node_set_joint_positionResponse :datatype-) "webots_ros/node_set_joint_positionResponse")
(setf (get webots_ros::node_set_joint_positionResponse :definition-)
      "uint64 node
float64 position
int32 index
---
bool success

")



(provide :webots_ros/node_set_joint_position "5c6d60bc617f1348200743f9a8544085")


