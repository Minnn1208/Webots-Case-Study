;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_disable_contact_points_tracking)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_disable_contact_points_tracking (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_DISABLE_CONTACT_POINTS_TRACKING")
  (make-package "WEBOTS_ROS::NODE_DISABLE_CONTACT_POINTS_TRACKING"))
(unless (find-package "WEBOTS_ROS::NODE_DISABLE_CONTACT_POINTS_TRACKINGREQUEST")
  (make-package "WEBOTS_ROS::NODE_DISABLE_CONTACT_POINTS_TRACKINGREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_DISABLE_CONTACT_POINTS_TRACKINGRESPONSE")
  (make-package "WEBOTS_ROS::NODE_DISABLE_CONTACT_POINTS_TRACKINGRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_disable_contact_points_trackingRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_disable_contact_points_trackingRequest
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

(defclass webots_ros::node_disable_contact_points_trackingResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::node_disable_contact_points_trackingResponse
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
    ;; int8 _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _success
       (write-byte _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _success
     (setq _success (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _success 127) (setq _success (- _success 256)))
   ;;
   self)
  )

(defclass webots_ros::node_disable_contact_points_tracking
  :super ros::object
  :slots ())

(setf (get webots_ros::node_disable_contact_points_tracking :md5sum-) "594d3b785623c78d3382c6628faa0f8c")
(setf (get webots_ros::node_disable_contact_points_tracking :datatype-) "webots_ros/node_disable_contact_points_tracking")
(setf (get webots_ros::node_disable_contact_points_tracking :request) webots_ros::node_disable_contact_points_trackingRequest)
(setf (get webots_ros::node_disable_contact_points_tracking :response) webots_ros::node_disable_contact_points_trackingResponse)

(defmethod webots_ros::node_disable_contact_points_trackingRequest
  (:response () (instance webots_ros::node_disable_contact_points_trackingResponse :init)))

(setf (get webots_ros::node_disable_contact_points_trackingRequest :md5sum-) "594d3b785623c78d3382c6628faa0f8c")
(setf (get webots_ros::node_disable_contact_points_trackingRequest :datatype-) "webots_ros/node_disable_contact_points_trackingRequest")
(setf (get webots_ros::node_disable_contact_points_trackingRequest :definition-)
      "uint64 node
---
int8 success

")

(setf (get webots_ros::node_disable_contact_points_trackingResponse :md5sum-) "594d3b785623c78d3382c6628faa0f8c")
(setf (get webots_ros::node_disable_contact_points_trackingResponse :datatype-) "webots_ros/node_disable_contact_points_trackingResponse")
(setf (get webots_ros::node_disable_contact_points_trackingResponse :definition-)
      "uint64 node
---
int8 success

")



(provide :webots_ros/node_disable_contact_points_tracking "594d3b785623c78d3382c6628faa0f8c")


