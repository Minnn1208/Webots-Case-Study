;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::set_int)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'set_int (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SET_INT")
  (make-package "WEBOTS_ROS::SET_INT"))
(unless (find-package "WEBOTS_ROS::SET_INTREQUEST")
  (make-package "WEBOTS_ROS::SET_INTREQUEST"))
(unless (find-package "WEBOTS_ROS::SET_INTRESPONSE")
  (make-package "WEBOTS_ROS::SET_INTRESPONSE"))

(in-package "ROS")





(defclass webots_ros::set_intRequest
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::set_intRequest
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
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::set_intResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::set_intResponse
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

(defclass webots_ros::set_int
  :super ros::object
  :slots ())

(setf (get webots_ros::set_int :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get webots_ros::set_int :datatype-) "webots_ros/set_int")
(setf (get webots_ros::set_int :request) webots_ros::set_intRequest)
(setf (get webots_ros::set_int :response) webots_ros::set_intResponse)

(defmethod webots_ros::set_intRequest
  (:response () (instance webots_ros::set_intResponse :init)))

(setf (get webots_ros::set_intRequest :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get webots_ros::set_intRequest :datatype-) "webots_ros/set_intRequest")
(setf (get webots_ros::set_intRequest :definition-)
      "int32 value
---
bool success

")

(setf (get webots_ros::set_intResponse :md5sum-) "bc437afb45673379bdb9f299f9cbbc9e")
(setf (get webots_ros::set_intResponse :datatype-) "webots_ros/set_intResponse")
(setf (get webots_ros::set_intResponse :definition-)
      "int32 value
---
bool success

")



(provide :webots_ros/set_int "bc437afb45673379bdb9f299f9cbbc9e")


