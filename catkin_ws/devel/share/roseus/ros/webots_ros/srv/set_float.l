;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::set_float)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'set_float (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SET_FLOAT")
  (make-package "WEBOTS_ROS::SET_FLOAT"))
(unless (find-package "WEBOTS_ROS::SET_FLOATREQUEST")
  (make-package "WEBOTS_ROS::SET_FLOATREQUEST"))
(unless (find-package "WEBOTS_ROS::SET_FLOATRESPONSE")
  (make-package "WEBOTS_ROS::SET_FLOATRESPONSE"))

(in-package "ROS")





(defclass webots_ros::set_floatRequest
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::set_floatRequest
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::set_floatResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::set_floatResponse
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

(defclass webots_ros::set_float
  :super ros::object
  :slots ())

(setf (get webots_ros::set_float :md5sum-) "0f0509b4253b73657cb37e93f4f2960c")
(setf (get webots_ros::set_float :datatype-) "webots_ros/set_float")
(setf (get webots_ros::set_float :request) webots_ros::set_floatRequest)
(setf (get webots_ros::set_float :response) webots_ros::set_floatResponse)

(defmethod webots_ros::set_floatRequest
  (:response () (instance webots_ros::set_floatResponse :init)))

(setf (get webots_ros::set_floatRequest :md5sum-) "0f0509b4253b73657cb37e93f4f2960c")
(setf (get webots_ros::set_floatRequest :datatype-) "webots_ros/set_floatRequest")
(setf (get webots_ros::set_floatRequest :definition-)
      "float64 value
---
bool success

")

(setf (get webots_ros::set_floatResponse :md5sum-) "0f0509b4253b73657cb37e93f4f2960c")
(setf (get webots_ros::set_floatResponse :datatype-) "webots_ros/set_floatResponse")
(setf (get webots_ros::set_floatResponse :definition-)
      "float64 value
---
bool success

")



(provide :webots_ros/set_float "0f0509b4253b73657cb37e93f4f2960c")


