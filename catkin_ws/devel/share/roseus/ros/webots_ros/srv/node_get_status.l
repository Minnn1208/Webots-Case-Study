;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_status)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_status (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_STATUS")
  (make-package "WEBOTS_ROS::NODE_GET_STATUS"))
(unless (find-package "WEBOTS_ROS::NODE_GET_STATUSREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_STATUSREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_STATUSRESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_STATUSRESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_statusRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::node_get_statusRequest
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

(defclass webots_ros::node_get_statusResponse
  :super ros::object
  :slots (_status ))

(defmethod webots_ros::node_get_statusResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_get_status
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_status :md5sum-) "9d10c008835cf4bd024a6af9eca46c13")
(setf (get webots_ros::node_get_status :datatype-) "webots_ros/node_get_status")
(setf (get webots_ros::node_get_status :request) webots_ros::node_get_statusRequest)
(setf (get webots_ros::node_get_status :response) webots_ros::node_get_statusResponse)

(defmethod webots_ros::node_get_statusRequest
  (:response () (instance webots_ros::node_get_statusResponse :init)))

(setf (get webots_ros::node_get_statusRequest :md5sum-) "9d10c008835cf4bd024a6af9eca46c13")
(setf (get webots_ros::node_get_statusRequest :datatype-) "webots_ros/node_get_statusRequest")
(setf (get webots_ros::node_get_statusRequest :definition-)
      "uint8 ask
---
uint8 status

")

(setf (get webots_ros::node_get_statusResponse :md5sum-) "9d10c008835cf4bd024a6af9eca46c13")
(setf (get webots_ros::node_get_statusResponse :datatype-) "webots_ros/node_get_statusResponse")
(setf (get webots_ros::node_get_statusResponse :definition-)
      "uint8 ask
---
uint8 status

")



(provide :webots_ros/node_get_status "9d10c008835cf4bd024a6af9eca46c13")


