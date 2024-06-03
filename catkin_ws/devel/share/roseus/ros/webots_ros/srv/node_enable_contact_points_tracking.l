;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_enable_contact_points_tracking)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_enable_contact_points_tracking (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_ENABLE_CONTACT_POINTS_TRACKING")
  (make-package "WEBOTS_ROS::NODE_ENABLE_CONTACT_POINTS_TRACKING"))
(unless (find-package "WEBOTS_ROS::NODE_ENABLE_CONTACT_POINTS_TRACKINGREQUEST")
  (make-package "WEBOTS_ROS::NODE_ENABLE_CONTACT_POINTS_TRACKINGREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_ENABLE_CONTACT_POINTS_TRACKINGRESPONSE")
  (make-package "WEBOTS_ROS::NODE_ENABLE_CONTACT_POINTS_TRACKINGRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_enable_contact_points_trackingRequest
  :super ros::object
  :slots (_node _sampling_period _include_descendants ))

(defmethod webots_ros::node_enable_contact_points_trackingRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:sampling_period __sampling_period) 0)
    ((:include_descendants __include_descendants) nil)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _sampling_period (round __sampling_period))
   (setq _include_descendants __include_descendants)
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:sampling_period
   (&optional __sampling_period)
   (if __sampling_period (setq _sampling_period __sampling_period)) _sampling_period)
  (:include_descendants
   (&optional (__include_descendants :null))
   (if (not (eq __include_descendants :null)) (setq _include_descendants __include_descendants)) _include_descendants)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; int32 _sampling_period
    4
    ;; bool _include_descendants
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
     ;; int32 _sampling_period
       (write-long _sampling_period s)
     ;; bool _include_descendants
       (if _include_descendants (write-byte -1 s) (write-byte 0 s))
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
   ;; int32 _sampling_period
     (setq _sampling_period (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _include_descendants
     (setq _include_descendants (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_enable_contact_points_trackingResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::node_enable_contact_points_trackingResponse
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

(defclass webots_ros::node_enable_contact_points_tracking
  :super ros::object
  :slots ())

(setf (get webots_ros::node_enable_contact_points_tracking :md5sum-) "dccb3b91ba4f7b41232e5752a12d0fe4")
(setf (get webots_ros::node_enable_contact_points_tracking :datatype-) "webots_ros/node_enable_contact_points_tracking")
(setf (get webots_ros::node_enable_contact_points_tracking :request) webots_ros::node_enable_contact_points_trackingRequest)
(setf (get webots_ros::node_enable_contact_points_tracking :response) webots_ros::node_enable_contact_points_trackingResponse)

(defmethod webots_ros::node_enable_contact_points_trackingRequest
  (:response () (instance webots_ros::node_enable_contact_points_trackingResponse :init)))

(setf (get webots_ros::node_enable_contact_points_trackingRequest :md5sum-) "dccb3b91ba4f7b41232e5752a12d0fe4")
(setf (get webots_ros::node_enable_contact_points_trackingRequest :datatype-) "webots_ros/node_enable_contact_points_trackingRequest")
(setf (get webots_ros::node_enable_contact_points_trackingRequest :definition-)
      "uint64 node
int32 sampling_period
bool include_descendants
---
int8 success

")

(setf (get webots_ros::node_enable_contact_points_trackingResponse :md5sum-) "dccb3b91ba4f7b41232e5752a12d0fe4")
(setf (get webots_ros::node_enable_contact_points_trackingResponse :datatype-) "webots_ros/node_enable_contact_points_trackingResponse")
(setf (get webots_ros::node_enable_contact_points_trackingResponse :definition-)
      "uint64 node
int32 sampling_period
bool include_descendants
---
int8 success

")



(provide :webots_ros/node_enable_contact_points_tracking "dccb3b91ba4f7b41232e5752a12d0fe4")


