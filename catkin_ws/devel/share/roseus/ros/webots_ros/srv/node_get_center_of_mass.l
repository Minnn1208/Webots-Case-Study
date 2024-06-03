;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_center_of_mass)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_center_of_mass (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_CENTER_OF_MASS")
  (make-package "WEBOTS_ROS::NODE_GET_CENTER_OF_MASS"))
(unless (find-package "WEBOTS_ROS::NODE_GET_CENTER_OF_MASSREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_CENTER_OF_MASSREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_CENTER_OF_MASSRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_CENTER_OF_MASSRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass webots_ros::node_get_center_of_massRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_center_of_massRequest
  (:init
   (&key
    ((:node __node) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
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
   ;;
   self)
  )

(defclass webots_ros::node_get_center_of_massResponse
  :super ros::object
  :slots (_centerOfMass ))

(defmethod webots_ros::node_get_center_of_massResponse
  (:init
   (&key
    ((:centerOfMass __centerOfMass) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _centerOfMass __centerOfMass)
   self)
  (:centerOfMass
   (&rest __centerOfMass)
   (if (keywordp (car __centerOfMass))
       (send* _centerOfMass __centerOfMass)
     (progn
       (if __centerOfMass (setq _centerOfMass (car __centerOfMass)))
       _centerOfMass)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _centerOfMass
    (send _centerOfMass :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _centerOfMass
       (send _centerOfMass :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _centerOfMass
     (send _centerOfMass :deserialize buf ptr-) (incf ptr- (send _centerOfMass :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::node_get_center_of_mass
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_center_of_mass :md5sum-) "08baa9a118e7086ad4f02f73fae3dd80")
(setf (get webots_ros::node_get_center_of_mass :datatype-) "webots_ros/node_get_center_of_mass")
(setf (get webots_ros::node_get_center_of_mass :request) webots_ros::node_get_center_of_massRequest)
(setf (get webots_ros::node_get_center_of_mass :response) webots_ros::node_get_center_of_massResponse)

(defmethod webots_ros::node_get_center_of_massRequest
  (:response () (instance webots_ros::node_get_center_of_massResponse :init)))

(setf (get webots_ros::node_get_center_of_massRequest :md5sum-) "08baa9a118e7086ad4f02f73fae3dd80")
(setf (get webots_ros::node_get_center_of_massRequest :datatype-) "webots_ros/node_get_center_of_massRequest")
(setf (get webots_ros::node_get_center_of_massRequest :definition-)
      "uint64 node
---
geometry_msgs/Point centerOfMass


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get webots_ros::node_get_center_of_massResponse :md5sum-) "08baa9a118e7086ad4f02f73fae3dd80")
(setf (get webots_ros::node_get_center_of_massResponse :datatype-) "webots_ros/node_get_center_of_massResponse")
(setf (get webots_ros::node_get_center_of_massResponse :definition-)
      "uint64 node
---
geometry_msgs/Point centerOfMass


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :webots_ros/node_get_center_of_mass "08baa9a118e7086ad4f02f73fae3dd80")


