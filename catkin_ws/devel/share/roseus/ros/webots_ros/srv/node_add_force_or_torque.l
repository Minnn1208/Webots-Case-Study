;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_add_force_or_torque)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_add_force_or_torque (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_ADD_FORCE_OR_TORQUE")
  (make-package "WEBOTS_ROS::NODE_ADD_FORCE_OR_TORQUE"))
(unless (find-package "WEBOTS_ROS::NODE_ADD_FORCE_OR_TORQUEREQUEST")
  (make-package "WEBOTS_ROS::NODE_ADD_FORCE_OR_TORQUEREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_ADD_FORCE_OR_TORQUERESPONSE")
  (make-package "WEBOTS_ROS::NODE_ADD_FORCE_OR_TORQUERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass webots_ros::node_add_force_or_torqueRequest
  :super ros::object
  :slots (_node _force _relative ))

(defmethod webots_ros::node_add_force_or_torqueRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:relative __relative) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _force __force)
   (setq _relative (round __relative))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; geometry_msgs/Vector3 _force
    (send _force :serialization-length)
    ;; uint8 _relative
    1
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
     ;; geometry_msgs/Vector3 _force
       (send _force :serialize s)
     ;; uint8 _relative
       (write-byte _relative s)
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
   ;; geometry_msgs/Vector3 _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; uint8 _relative
     (setq _relative (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_add_force_or_torqueResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::node_add_force_or_torqueResponse
  (:init
   (&key
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _success (round __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; int32 _success
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _success
       (write-long _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _success
     (setq _success (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::node_add_force_or_torque
  :super ros::object
  :slots ())

(setf (get webots_ros::node_add_force_or_torque :md5sum-) "c741c774685e3d317ac9b286bef0788d")
(setf (get webots_ros::node_add_force_or_torque :datatype-) "webots_ros/node_add_force_or_torque")
(setf (get webots_ros::node_add_force_or_torque :request) webots_ros::node_add_force_or_torqueRequest)
(setf (get webots_ros::node_add_force_or_torque :response) webots_ros::node_add_force_or_torqueResponse)

(defmethod webots_ros::node_add_force_or_torqueRequest
  (:response () (instance webots_ros::node_add_force_or_torqueResponse :init)))

(setf (get webots_ros::node_add_force_or_torqueRequest :md5sum-) "c741c774685e3d317ac9b286bef0788d")
(setf (get webots_ros::node_add_force_or_torqueRequest :datatype-) "webots_ros/node_add_force_or_torqueRequest")
(setf (get webots_ros::node_add_force_or_torqueRequest :definition-)
      "uint64 node
geometry_msgs/Vector3 force
uint8 relative

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
int32 success

")

(setf (get webots_ros::node_add_force_or_torqueResponse :md5sum-) "c741c774685e3d317ac9b286bef0788d")
(setf (get webots_ros::node_add_force_or_torqueResponse :datatype-) "webots_ros/node_add_force_or_torqueResponse")
(setf (get webots_ros::node_add_force_or_torqueResponse :definition-)
      "uint64 node
geometry_msgs/Vector3 force
uint8 relative

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---
int32 success

")



(provide :webots_ros/node_add_force_or_torque "c741c774685e3d317ac9b286bef0788d")


