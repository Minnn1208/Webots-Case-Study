;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::camera_get_zoom_info)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'camera_get_zoom_info (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::CAMERA_GET_ZOOM_INFO")
  (make-package "WEBOTS_ROS::CAMERA_GET_ZOOM_INFO"))
(unless (find-package "WEBOTS_ROS::CAMERA_GET_ZOOM_INFOREQUEST")
  (make-package "WEBOTS_ROS::CAMERA_GET_ZOOM_INFOREQUEST"))
(unless (find-package "WEBOTS_ROS::CAMERA_GET_ZOOM_INFORESPONSE")
  (make-package "WEBOTS_ROS::CAMERA_GET_ZOOM_INFORESPONSE"))

(in-package "ROS")





(defclass webots_ros::camera_get_zoom_infoRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::camera_get_zoom_infoRequest
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

(defclass webots_ros::camera_get_zoom_infoResponse
  :super ros::object
  :slots (_minFov _maxFov ))

(defmethod webots_ros::camera_get_zoom_infoResponse
  (:init
   (&key
    ((:minFov __minFov) 0.0)
    ((:maxFov __maxFov) 0.0)
    )
   (send-super :init)
   (setq _minFov (float __minFov))
   (setq _maxFov (float __maxFov))
   self)
  (:minFov
   (&optional __minFov)
   (if __minFov (setq _minFov __minFov)) _minFov)
  (:maxFov
   (&optional __maxFov)
   (if __maxFov (setq _maxFov __maxFov)) _maxFov)
  (:serialization-length
   ()
   (+
    ;; float64 _minFov
    8
    ;; float64 _maxFov
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _minFov
       (sys::poke _minFov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxFov
       (sys::poke _maxFov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _minFov
     (setq _minFov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxFov
     (setq _maxFov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::camera_get_zoom_info
  :super ros::object
  :slots ())

(setf (get webots_ros::camera_get_zoom_info :md5sum-) "5cc977379b136acabbe49ef90364861a")
(setf (get webots_ros::camera_get_zoom_info :datatype-) "webots_ros/camera_get_zoom_info")
(setf (get webots_ros::camera_get_zoom_info :request) webots_ros::camera_get_zoom_infoRequest)
(setf (get webots_ros::camera_get_zoom_info :response) webots_ros::camera_get_zoom_infoResponse)

(defmethod webots_ros::camera_get_zoom_infoRequest
  (:response () (instance webots_ros::camera_get_zoom_infoResponse :init)))

(setf (get webots_ros::camera_get_zoom_infoRequest :md5sum-) "5cc977379b136acabbe49ef90364861a")
(setf (get webots_ros::camera_get_zoom_infoRequest :datatype-) "webots_ros/camera_get_zoom_infoRequest")
(setf (get webots_ros::camera_get_zoom_infoRequest :definition-)
      "uint8 ask
---
float64 minFov
float64 maxFov

")

(setf (get webots_ros::camera_get_zoom_infoResponse :md5sum-) "5cc977379b136acabbe49ef90364861a")
(setf (get webots_ros::camera_get_zoom_infoResponse :datatype-) "webots_ros/camera_get_zoom_infoResponse")
(setf (get webots_ros::camera_get_zoom_infoResponse :definition-)
      "uint8 ask
---
float64 minFov
float64 maxFov

")



(provide :webots_ros/camera_get_zoom_info "5cc977379b136acabbe49ef90364861a")


