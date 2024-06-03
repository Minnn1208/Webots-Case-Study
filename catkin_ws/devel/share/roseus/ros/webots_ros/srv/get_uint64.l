;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::get_uint64)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'get_uint64 (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::GET_UINT64")
  (make-package "WEBOTS_ROS::GET_UINT64"))
(unless (find-package "WEBOTS_ROS::GET_UINT64REQUEST")
  (make-package "WEBOTS_ROS::GET_UINT64REQUEST"))
(unless (find-package "WEBOTS_ROS::GET_UINT64RESPONSE")
  (make-package "WEBOTS_ROS::GET_UINT64RESPONSE"))

(in-package "ROS")





(defclass webots_ros::get_uint64Request
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::get_uint64Request
  (:init
   (&key
    ((:ask __ask) nil)
    )
   (send-super :init)
   (setq _ask __ask)
   self)
  (:ask
   (&optional (__ask :null))
   (if (not (eq __ask :null)) (setq _ask __ask)) _ask)
  (:serialization-length
   ()
   (+
    ;; bool _ask
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ask
       (if _ask (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ask
     (setq _ask (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::get_uint64Response
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::get_uint64Response
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _value
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value) (= (length (_value . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value . bv) 0) 0) s)
              (write-long (ash (elt (_value . bv) 1) -1) s))
             ((and (class _value) (= (length (_value . bv)) 1)) ;; big1
              (write-long (elt (_value . bv) 0) s)
              (write-long (if (>= _value 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value s)(write-long (if (>= _value 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _value
     
#+(or :alpha :irix6 :x86_64)
      (setf _value (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass webots_ros::get_uint64
  :super ros::object
  :slots ())

(setf (get webots_ros::get_uint64 :md5sum-) "d531f9d37648dc4de8bf2e757ee280a0")
(setf (get webots_ros::get_uint64 :datatype-) "webots_ros/get_uint64")
(setf (get webots_ros::get_uint64 :request) webots_ros::get_uint64Request)
(setf (get webots_ros::get_uint64 :response) webots_ros::get_uint64Response)

(defmethod webots_ros::get_uint64Request
  (:response () (instance webots_ros::get_uint64Response :init)))

(setf (get webots_ros::get_uint64Request :md5sum-) "d531f9d37648dc4de8bf2e757ee280a0")
(setf (get webots_ros::get_uint64Request :datatype-) "webots_ros/get_uint64Request")
(setf (get webots_ros::get_uint64Request :definition-)
      "bool ask
---
uint64 value

")

(setf (get webots_ros::get_uint64Response :md5sum-) "d531f9d37648dc4de8bf2e757ee280a0")
(setf (get webots_ros::get_uint64Response :datatype-) "webots_ros/get_uint64Response")
(setf (get webots_ros::get_uint64Response :definition-)
      "bool ask
---
uint64 value

")



(provide :webots_ros/get_uint64 "d531f9d37648dc4de8bf2e757ee280a0")


