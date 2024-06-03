;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_set_string)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_set_string (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_SET_STRING")
  (make-package "WEBOTS_ROS::NODE_SET_STRING"))
(unless (find-package "WEBOTS_ROS::NODE_SET_STRINGREQUEST")
  (make-package "WEBOTS_ROS::NODE_SET_STRINGREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_SET_STRINGRESPONSE")
  (make-package "WEBOTS_ROS::NODE_SET_STRINGRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_set_stringRequest
  :super ros::object
  :slots (_node _state_name ))

(defmethod webots_ros::node_set_stringRequest
  (:init
   (&key
    ((:node __node) 0)
    ((:state_name __state_name) "")
    )
   (send-super :init)
   (setq _node (round __node))
   (setq _state_name (string __state_name))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:state_name
   (&optional __state_name)
   (if __state_name (setq _state_name __state_name)) _state_name)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ;; string _state_name
    4 (length _state_name)
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
     ;; string _state_name
       (write-long (length _state_name) s) (princ _state_name s)
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
   ;; string _state_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::node_set_stringResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::node_set_stringResponse
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

(defclass webots_ros::node_set_string
  :super ros::object
  :slots ())

(setf (get webots_ros::node_set_string :md5sum-) "861607cfa9bd9ae700702d939e7f1dd7")
(setf (get webots_ros::node_set_string :datatype-) "webots_ros/node_set_string")
(setf (get webots_ros::node_set_string :request) webots_ros::node_set_stringRequest)
(setf (get webots_ros::node_set_string :response) webots_ros::node_set_stringResponse)

(defmethod webots_ros::node_set_stringRequest
  (:response () (instance webots_ros::node_set_stringResponse :init)))

(setf (get webots_ros::node_set_stringRequest :md5sum-) "861607cfa9bd9ae700702d939e7f1dd7")
(setf (get webots_ros::node_set_stringRequest :datatype-) "webots_ros/node_set_stringRequest")
(setf (get webots_ros::node_set_stringRequest :definition-)
      "uint64 node
string state_name
---
int32 success

")

(setf (get webots_ros::node_set_stringResponse :md5sum-) "861607cfa9bd9ae700702d939e7f1dd7")
(setf (get webots_ros::node_set_stringResponse :datatype-) "webots_ros/node_set_stringResponse")
(setf (get webots_ros::node_set_stringResponse :definition-)
      "uint64 node
string state_name
---
int32 success

")



(provide :webots_ros/node_set_string "861607cfa9bd9ae700702d939e7f1dd7")


