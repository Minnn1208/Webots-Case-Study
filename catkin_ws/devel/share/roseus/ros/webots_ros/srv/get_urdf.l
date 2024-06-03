;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::get_urdf)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'get_urdf (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::GET_URDF")
  (make-package "WEBOTS_ROS::GET_URDF"))
(unless (find-package "WEBOTS_ROS::GET_URDFREQUEST")
  (make-package "WEBOTS_ROS::GET_URDFREQUEST"))
(unless (find-package "WEBOTS_ROS::GET_URDFRESPONSE")
  (make-package "WEBOTS_ROS::GET_URDFRESPONSE"))

(in-package "ROS")





(defclass webots_ros::get_urdfRequest
  :super ros::object
  :slots (_prefix ))

(defmethod webots_ros::get_urdfRequest
  (:init
   (&key
    ((:prefix __prefix) "")
    )
   (send-super :init)
   (setq _prefix (string __prefix))
   self)
  (:prefix
   (&optional __prefix)
   (if __prefix (setq _prefix __prefix)) _prefix)
  (:serialization-length
   ()
   (+
    ;; string _prefix
    4 (length _prefix)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _prefix
       (write-long (length _prefix) s) (princ _prefix s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _prefix
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prefix (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::get_urdfResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::get_urdfResponse
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

(defclass webots_ros::get_urdf
  :super ros::object
  :slots ())

(setf (get webots_ros::get_urdf :md5sum-) "9ae31c29f15764629e70e60492948eb1")
(setf (get webots_ros::get_urdf :datatype-) "webots_ros/get_urdf")
(setf (get webots_ros::get_urdf :request) webots_ros::get_urdfRequest)
(setf (get webots_ros::get_urdf :response) webots_ros::get_urdfResponse)

(defmethod webots_ros::get_urdfRequest
  (:response () (instance webots_ros::get_urdfResponse :init)))

(setf (get webots_ros::get_urdfRequest :md5sum-) "9ae31c29f15764629e70e60492948eb1")
(setf (get webots_ros::get_urdfRequest :datatype-) "webots_ros/get_urdfRequest")
(setf (get webots_ros::get_urdfRequest :definition-)
      "string prefix
---
string value

")

(setf (get webots_ros::get_urdfResponse :md5sum-) "9ae31c29f15764629e70e60492948eb1")
(setf (get webots_ros::get_urdfResponse :datatype-) "webots_ros/get_urdfResponse")
(setf (get webots_ros::get_urdfResponse :definition-)
      "string prefix
---
string value

")



(provide :webots_ros/get_urdf "9ae31c29f15764629e70e60492948eb1")


