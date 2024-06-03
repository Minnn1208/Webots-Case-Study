;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::get_bool)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'get_bool (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::GET_BOOL")
  (make-package "WEBOTS_ROS::GET_BOOL"))
(unless (find-package "WEBOTS_ROS::GET_BOOLREQUEST")
  (make-package "WEBOTS_ROS::GET_BOOLREQUEST"))
(unless (find-package "WEBOTS_ROS::GET_BOOLRESPONSE")
  (make-package "WEBOTS_ROS::GET_BOOLRESPONSE"))

(in-package "ROS")





(defclass webots_ros::get_boolRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::get_boolRequest
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

(defclass webots_ros::get_boolResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::get_boolResponse
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::get_bool
  :super ros::object
  :slots ())

(setf (get webots_ros::get_bool :md5sum-) "155bbaa7eff4769d41b3327e2ec91080")
(setf (get webots_ros::get_bool :datatype-) "webots_ros/get_bool")
(setf (get webots_ros::get_bool :request) webots_ros::get_boolRequest)
(setf (get webots_ros::get_bool :response) webots_ros::get_boolResponse)

(defmethod webots_ros::get_boolRequest
  (:response () (instance webots_ros::get_boolResponse :init)))

(setf (get webots_ros::get_boolRequest :md5sum-) "155bbaa7eff4769d41b3327e2ec91080")
(setf (get webots_ros::get_boolRequest :datatype-) "webots_ros/get_boolRequest")
(setf (get webots_ros::get_boolRequest :definition-)
      "bool ask
---
bool value

")

(setf (get webots_ros::get_boolResponse :md5sum-) "155bbaa7eff4769d41b3327e2ec91080")
(setf (get webots_ros::get_boolResponse :datatype-) "webots_ros/get_boolResponse")
(setf (get webots_ros::get_boolResponse :definition-)
      "bool ask
---
bool value

")



(provide :webots_ros/get_bool "155bbaa7eff4769d41b3327e2ec91080")


