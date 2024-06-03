;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_set_visibility)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_set_visibility (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_SET_VISIBILITY")
  (make-package "WEBOTS_ROS::NODE_SET_VISIBILITY"))
(unless (find-package "WEBOTS_ROS::NODE_SET_VISIBILITYREQUEST")
  (make-package "WEBOTS_ROS::NODE_SET_VISIBILITYREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_SET_VISIBILITYRESPONSE")
  (make-package "WEBOTS_ROS::NODE_SET_VISIBILITYRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_set_visibilityRequest
  :super ros::object
  :slots (_node _from _visible ))

(defmethod webots_ros::node_set_visibilityRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:from __from) 0)
    ((:visible __visible) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _from (round __from))
   (setq _visible (round __visible))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:from
   (&optional __from)
   (if __from (setq _from __from)) _from)
  (:visible
   (&optional __visible)
   (if __visible (setq _visible __visible)) _visible)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; uint64 _from
    8
    ;; uint8 _visible
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
     ;; uint64 _from
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _from (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _from) (= (length (_from . bv)) 2)) ;; bignum
              (write-long (ash (elt (_from . bv) 0) 0) s)
              (write-long (ash (elt (_from . bv) 1) -1) s))
             ((and (class _from) (= (length (_from . bv)) 1)) ;; big1
              (write-long (elt (_from . bv) 0) s)
              (write-long (if (>= _from 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _from s)(write-long (if (>= _from 0) 0 #xffffffff) s)))
     ;; uint8 _visible
       (write-byte _visible s)
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
   ;; uint64 _from
     
#+(or :alpha :irix6 :x86_64)
      (setf _from (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _from (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _visible
     (setq _visible (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_set_visibilityResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::node_set_visibilityResponse
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

(defclass webots_ros::node_set_visibility
  :super ros::object
  :slots ())

(setf (get webots_ros::node_set_visibility :md5sum-) "b6fcfa2c79ae79467e085318b3617289")
(setf (get webots_ros::node_set_visibility :datatype-) "webots_ros/node_set_visibility")
(setf (get webots_ros::node_set_visibility :request) webots_ros::node_set_visibilityRequest)
(setf (get webots_ros::node_set_visibility :response) webots_ros::node_set_visibilityResponse)

(defmethod webots_ros::node_set_visibilityRequest
  (:response () (instance webots_ros::node_set_visibilityResponse :init)))

(setf (get webots_ros::node_set_visibilityRequest :md5sum-) "b6fcfa2c79ae79467e085318b3617289")
(setf (get webots_ros::node_set_visibilityRequest :datatype-) "webots_ros/node_set_visibilityRequest")
(setf (get webots_ros::node_set_visibilityRequest :definition-)
      "uint64 node
uint64 from
uint8 visible
---
int8 success

")

(setf (get webots_ros::node_set_visibilityResponse :md5sum-) "b6fcfa2c79ae79467e085318b3617289")
(setf (get webots_ros::node_set_visibilityResponse :datatype-) "webots_ros/node_set_visibilityResponse")
(setf (get webots_ros::node_set_visibilityResponse :definition-)
      "uint64 node
uint64 from
uint8 visible
---
int8 success

")



(provide :webots_ros/node_set_visibility "b6fcfa2c79ae79467e085318b3617289")


