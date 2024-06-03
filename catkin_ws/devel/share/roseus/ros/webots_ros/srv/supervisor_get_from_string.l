;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::supervisor_get_from_string)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'supervisor_get_from_string (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_STRING")
  (make-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_STRING"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_STRINGREQUEST")
  (make-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_STRINGREQUEST"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_STRINGRESPONSE")
  (make-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_STRINGRESPONSE"))

(in-package "ROS")





(defclass webots_ros::supervisor_get_from_stringRequest
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::supervisor_get_from_stringRequest
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::supervisor_get_from_stringResponse
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::supervisor_get_from_stringResponse
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

(defclass webots_ros::supervisor_get_from_string
  :super ros::object
  :slots ())

(setf (get webots_ros::supervisor_get_from_string :md5sum-) "fcb5d4f10a46a1a9f10528733a3b9b3a")
(setf (get webots_ros::supervisor_get_from_string :datatype-) "webots_ros/supervisor_get_from_string")
(setf (get webots_ros::supervisor_get_from_string :request) webots_ros::supervisor_get_from_stringRequest)
(setf (get webots_ros::supervisor_get_from_string :response) webots_ros::supervisor_get_from_stringResponse)

(defmethod webots_ros::supervisor_get_from_stringRequest
  (:response () (instance webots_ros::supervisor_get_from_stringResponse :init)))

(setf (get webots_ros::supervisor_get_from_stringRequest :md5sum-) "fcb5d4f10a46a1a9f10528733a3b9b3a")
(setf (get webots_ros::supervisor_get_from_stringRequest :datatype-) "webots_ros/supervisor_get_from_stringRequest")
(setf (get webots_ros::supervisor_get_from_stringRequest :definition-)
      "string value
---
uint64 node

")

(setf (get webots_ros::supervisor_get_from_stringResponse :md5sum-) "fcb5d4f10a46a1a9f10528733a3b9b3a")
(setf (get webots_ros::supervisor_get_from_stringResponse :datatype-) "webots_ros/supervisor_get_from_stringResponse")
(setf (get webots_ros::supervisor_get_from_stringResponse :definition-)
      "string value
---
uint64 node

")



(provide :webots_ros/supervisor_get_from_string "fcb5d4f10a46a1a9f10528733a3b9b3a")


