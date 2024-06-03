;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::supervisor_virtual_reality_headset_get_position)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'supervisor_virtual_reality_headset_get_position (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_POSITION")
  (make-package "WEBOTS_ROS::SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_POSITION"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_POSITIONREQUEST")
  (make-package "WEBOTS_ROS::SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_POSITIONREQUEST"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_POSITIONRESPONSE")
  (make-package "WEBOTS_ROS::SUPERVISOR_VIRTUAL_REALITY_HEADSET_GET_POSITIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass webots_ros::supervisor_virtual_reality_headset_get_positionRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::supervisor_virtual_reality_headset_get_positionRequest
  (:init
   (&key
    ((:ask __ask) 0)
    )
   (send-super :init)
   (setq _ask (round __ask))
   self)
  (:ask
   (&optional __ask)
   (if __ask (setq _ask __ask)) _ask)
  (:serialization-length
   ()
   (+
    ;; uint8 _ask
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ask
       (write-byte _ask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ask
     (setq _ask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::supervisor_virtual_reality_headset_get_positionResponse
  :super ros::object
  :slots (_position ))

(defmethod webots_ros::supervisor_virtual_reality_headset_get_positionResponse
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass webots_ros::supervisor_virtual_reality_headset_get_position
  :super ros::object
  :slots ())

(setf (get webots_ros::supervisor_virtual_reality_headset_get_position :md5sum-) "a1afe95e0bfbfc2663c9e2313392f01d")
(setf (get webots_ros::supervisor_virtual_reality_headset_get_position :datatype-) "webots_ros/supervisor_virtual_reality_headset_get_position")
(setf (get webots_ros::supervisor_virtual_reality_headset_get_position :request) webots_ros::supervisor_virtual_reality_headset_get_positionRequest)
(setf (get webots_ros::supervisor_virtual_reality_headset_get_position :response) webots_ros::supervisor_virtual_reality_headset_get_positionResponse)

(defmethod webots_ros::supervisor_virtual_reality_headset_get_positionRequest
  (:response () (instance webots_ros::supervisor_virtual_reality_headset_get_positionResponse :init)))

(setf (get webots_ros::supervisor_virtual_reality_headset_get_positionRequest :md5sum-) "a1afe95e0bfbfc2663c9e2313392f01d")
(setf (get webots_ros::supervisor_virtual_reality_headset_get_positionRequest :datatype-) "webots_ros/supervisor_virtual_reality_headset_get_positionRequest")
(setf (get webots_ros::supervisor_virtual_reality_headset_get_positionRequest :definition-)
      "uint8 ask
---
geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get webots_ros::supervisor_virtual_reality_headset_get_positionResponse :md5sum-) "a1afe95e0bfbfc2663c9e2313392f01d")
(setf (get webots_ros::supervisor_virtual_reality_headset_get_positionResponse :datatype-) "webots_ros/supervisor_virtual_reality_headset_get_positionResponse")
(setf (get webots_ros::supervisor_virtual_reality_headset_get_positionResponse :definition-)
      "uint8 ask
---
geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :webots_ros/supervisor_virtual_reality_headset_get_position "a1afe95e0bfbfc2663c9e2313392f01d")


