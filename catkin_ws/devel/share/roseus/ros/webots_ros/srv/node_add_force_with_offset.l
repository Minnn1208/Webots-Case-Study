;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_add_force_with_offset)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_add_force_with_offset (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_ADD_FORCE_WITH_OFFSET")
  (make-package "WEBOTS_ROS::NODE_ADD_FORCE_WITH_OFFSET"))
(unless (find-package "WEBOTS_ROS::NODE_ADD_FORCE_WITH_OFFSETREQUEST")
  (make-package "WEBOTS_ROS::NODE_ADD_FORCE_WITH_OFFSETREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_ADD_FORCE_WITH_OFFSETRESPONSE")
  (make-package "WEBOTS_ROS::NODE_ADD_FORCE_WITH_OFFSETRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass webots_ros::node_add_force_with_offsetRequest
  :super ros::object
  :slots (_node _force _offset _relative ))

(defmethod webots_ros::node_add_force_with_offsetRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:force __force) (instance geometry_msgs::Vector3 :init))
    ((:offset __offset) (instance geometry_msgs::Vector3 :init))
    ((:relative __relative) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _force __force)
   (setq _offset __offset)
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
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
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
    ;; geometry_msgs/Vector3 _offset
    (send _offset :serialization-length)
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
     ;; geometry_msgs/Vector3 _offset
       (send _offset :serialize s)
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
   ;; geometry_msgs/Vector3 _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;; uint8 _relative
     (setq _relative (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_add_force_with_offsetResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::node_add_force_with_offsetResponse
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

(defclass webots_ros::node_add_force_with_offset
  :super ros::object
  :slots ())

(setf (get webots_ros::node_add_force_with_offset :md5sum-) "7bbdb8bfcc982af458fd685526128ebd")
(setf (get webots_ros::node_add_force_with_offset :datatype-) "webots_ros/node_add_force_with_offset")
(setf (get webots_ros::node_add_force_with_offset :request) webots_ros::node_add_force_with_offsetRequest)
(setf (get webots_ros::node_add_force_with_offset :response) webots_ros::node_add_force_with_offsetResponse)

(defmethod webots_ros::node_add_force_with_offsetRequest
  (:response () (instance webots_ros::node_add_force_with_offsetResponse :init)))

(setf (get webots_ros::node_add_force_with_offsetRequest :md5sum-) "7bbdb8bfcc982af458fd685526128ebd")
(setf (get webots_ros::node_add_force_with_offsetRequest :datatype-) "webots_ros/node_add_force_with_offsetRequest")
(setf (get webots_ros::node_add_force_with_offsetRequest :definition-)
      "uint64 node
geometry_msgs/Vector3 force
geometry_msgs/Vector3 offset
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

(setf (get webots_ros::node_add_force_with_offsetResponse :md5sum-) "7bbdb8bfcc982af458fd685526128ebd")
(setf (get webots_ros::node_add_force_with_offsetResponse :datatype-) "webots_ros/node_add_force_with_offsetResponse")
(setf (get webots_ros::node_add_force_with_offsetResponse :definition-)
      "uint64 node
geometry_msgs/Vector3 force
geometry_msgs/Vector3 offset
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



(provide :webots_ros/node_add_force_with_offset "7bbdb8bfcc982af458fd685526128ebd")


