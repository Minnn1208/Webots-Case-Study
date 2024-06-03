;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::motor_set_control_pid)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'motor_set_control_pid (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::MOTOR_SET_CONTROL_PID")
  (make-package "WEBOTS_ROS::MOTOR_SET_CONTROL_PID"))
(unless (find-package "WEBOTS_ROS::MOTOR_SET_CONTROL_PIDREQUEST")
  (make-package "WEBOTS_ROS::MOTOR_SET_CONTROL_PIDREQUEST"))
(unless (find-package "WEBOTS_ROS::MOTOR_SET_CONTROL_PIDRESPONSE")
  (make-package "WEBOTS_ROS::MOTOR_SET_CONTROL_PIDRESPONSE"))

(in-package "ROS")





(defclass webots_ros::motor_set_control_pidRequest
  :super ros::object
  :slots (_controlp _controli _controld ))

(defmethod webots_ros::motor_set_control_pidRequest
  (:init
   (&key
    ((:controlp __controlp) 0.0)
    ((:controli __controli) 0.0)
    ((:controld __controld) 0.0)
    )
   (send-super :init)
   (setq _controlp (float __controlp))
   (setq _controli (float __controli))
   (setq _controld (float __controld))
   self)
  (:controlp
   (&optional __controlp)
   (if __controlp (setq _controlp __controlp)) _controlp)
  (:controli
   (&optional __controli)
   (if __controli (setq _controli __controli)) _controli)
  (:controld
   (&optional __controld)
   (if __controld (setq _controld __controld)) _controld)
  (:serialization-length
   ()
   (+
    ;; float64 _controlp
    8
    ;; float64 _controli
    8
    ;; float64 _controld
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _controlp
       (sys::poke _controlp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _controli
       (sys::poke _controli (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _controld
       (sys::poke _controld (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _controlp
     (setq _controlp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _controli
     (setq _controli (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _controld
     (setq _controld (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::motor_set_control_pidResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::motor_set_control_pidResponse
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

(defclass webots_ros::motor_set_control_pid
  :super ros::object
  :slots ())

(setf (get webots_ros::motor_set_control_pid :md5sum-) "712b4e401e3c9cbb098cd0435a9a13d3")
(setf (get webots_ros::motor_set_control_pid :datatype-) "webots_ros/motor_set_control_pid")
(setf (get webots_ros::motor_set_control_pid :request) webots_ros::motor_set_control_pidRequest)
(setf (get webots_ros::motor_set_control_pid :response) webots_ros::motor_set_control_pidResponse)

(defmethod webots_ros::motor_set_control_pidRequest
  (:response () (instance webots_ros::motor_set_control_pidResponse :init)))

(setf (get webots_ros::motor_set_control_pidRequest :md5sum-) "712b4e401e3c9cbb098cd0435a9a13d3")
(setf (get webots_ros::motor_set_control_pidRequest :datatype-) "webots_ros/motor_set_control_pidRequest")
(setf (get webots_ros::motor_set_control_pidRequest :definition-)
      "float64 controlp
float64 controli
float64 controld
---
int8 success

")

(setf (get webots_ros::motor_set_control_pidResponse :md5sum-) "712b4e401e3c9cbb098cd0435a9a13d3")
(setf (get webots_ros::motor_set_control_pidResponse :datatype-) "webots_ros/motor_set_control_pidResponse")
(setf (get webots_ros::motor_set_control_pidResponse :definition-)
      "float64 controlp
float64 controli
float64 controld
---
int8 success

")



(provide :webots_ros/motor_set_control_pid "712b4e401e3c9cbb098cd0435a9a13d3")


