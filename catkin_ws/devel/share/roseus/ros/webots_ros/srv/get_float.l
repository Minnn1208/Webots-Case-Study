;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::get_float)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'get_float (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::GET_FLOAT")
  (make-package "WEBOTS_ROS::GET_FLOAT"))
(unless (find-package "WEBOTS_ROS::GET_FLOATREQUEST")
  (make-package "WEBOTS_ROS::GET_FLOATREQUEST"))
(unless (find-package "WEBOTS_ROS::GET_FLOATRESPONSE")
  (make-package "WEBOTS_ROS::GET_FLOATRESPONSE"))

(in-package "ROS")





(defclass webots_ros::get_floatRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::get_floatRequest
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

(defclass webots_ros::get_floatResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::get_floatResponse
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

(defclass webots_ros::get_float
  :super ros::object
  :slots ())

(setf (get webots_ros::get_float :md5sum-) "896e758cc9f93e6fc99057486a02ac6a")
(setf (get webots_ros::get_float :datatype-) "webots_ros/get_float")
(setf (get webots_ros::get_float :request) webots_ros::get_floatRequest)
(setf (get webots_ros::get_float :response) webots_ros::get_floatResponse)

(defmethod webots_ros::get_floatRequest
  (:response () (instance webots_ros::get_floatResponse :init)))

(setf (get webots_ros::get_floatRequest :md5sum-) "896e758cc9f93e6fc99057486a02ac6a")
(setf (get webots_ros::get_floatRequest :datatype-) "webots_ros/get_floatRequest")
(setf (get webots_ros::get_floatRequest :definition-)
      "bool ask
---
float64 value

")

(setf (get webots_ros::get_floatResponse :md5sum-) "896e758cc9f93e6fc99057486a02ac6a")
(setf (get webots_ros::get_floatResponse :datatype-) "webots_ros/get_floatResponse")
(setf (get webots_ros::get_floatResponse :definition-)
      "bool ask
---
float64 value

")



(provide :webots_ros/get_float "896e758cc9f93e6fc99057486a02ac6a")


