;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::lidar_get_info)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'lidar_get_info (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_INFO")
  (make-package "WEBOTS_ROS::LIDAR_GET_INFO"))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_INFOREQUEST")
  (make-package "WEBOTS_ROS::LIDAR_GET_INFOREQUEST"))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_INFORESPONSE")
  (make-package "WEBOTS_ROS::LIDAR_GET_INFORESPONSE"))

(in-package "ROS")





(defclass webots_ros::lidar_get_infoRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::lidar_get_infoRequest
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

(defclass webots_ros::lidar_get_infoResponse
  :super ros::object
  :slots (_horizontalResolution _numberOfLayers _fov _verticalFov _minRange _maxRange ))

(defmethod webots_ros::lidar_get_infoResponse
  (:init
   (&key
    ((:horizontalResolution __horizontalResolution) 0)
    ((:numberOfLayers __numberOfLayers) 0)
    ((:fov __fov) 0.0)
    ((:verticalFov __verticalFov) 0.0)
    ((:minRange __minRange) 0.0)
    ((:maxRange __maxRange) 0.0)
    )
   (send-super :init)
   (setq _horizontalResolution (round __horizontalResolution))
   (setq _numberOfLayers (round __numberOfLayers))
   (setq _fov (float __fov))
   (setq _verticalFov (float __verticalFov))
   (setq _minRange (float __minRange))
   (setq _maxRange (float __maxRange))
   self)
  (:horizontalResolution
   (&optional __horizontalResolution)
   (if __horizontalResolution (setq _horizontalResolution __horizontalResolution)) _horizontalResolution)
  (:numberOfLayers
   (&optional __numberOfLayers)
   (if __numberOfLayers (setq _numberOfLayers __numberOfLayers)) _numberOfLayers)
  (:fov
   (&optional __fov)
   (if __fov (setq _fov __fov)) _fov)
  (:verticalFov
   (&optional __verticalFov)
   (if __verticalFov (setq _verticalFov __verticalFov)) _verticalFov)
  (:minRange
   (&optional __minRange)
   (if __minRange (setq _minRange __minRange)) _minRange)
  (:maxRange
   (&optional __maxRange)
   (if __maxRange (setq _maxRange __maxRange)) _maxRange)
  (:serialization-length
   ()
   (+
    ;; uint32 _horizontalResolution
    4
    ;; uint32 _numberOfLayers
    4
    ;; float64 _fov
    8
    ;; float64 _verticalFov
    8
    ;; float64 _minRange
    8
    ;; float64 _maxRange
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _horizontalResolution
       (write-long _horizontalResolution s)
     ;; uint32 _numberOfLayers
       (write-long _numberOfLayers s)
     ;; float64 _fov
       (sys::poke _fov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _verticalFov
       (sys::poke _verticalFov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _minRange
       (sys::poke _minRange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxRange
       (sys::poke _maxRange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _horizontalResolution
     (setq _horizontalResolution (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _numberOfLayers
     (setq _numberOfLayers (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _fov
     (setq _fov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _verticalFov
     (setq _verticalFov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _minRange
     (setq _minRange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxRange
     (setq _maxRange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::lidar_get_info
  :super ros::object
  :slots ())

(setf (get webots_ros::lidar_get_info :md5sum-) "d69a9b3d17121f1bdd796764ea53059a")
(setf (get webots_ros::lidar_get_info :datatype-) "webots_ros/lidar_get_info")
(setf (get webots_ros::lidar_get_info :request) webots_ros::lidar_get_infoRequest)
(setf (get webots_ros::lidar_get_info :response) webots_ros::lidar_get_infoResponse)

(defmethod webots_ros::lidar_get_infoRequest
  (:response () (instance webots_ros::lidar_get_infoResponse :init)))

(setf (get webots_ros::lidar_get_infoRequest :md5sum-) "d69a9b3d17121f1bdd796764ea53059a")
(setf (get webots_ros::lidar_get_infoRequest :datatype-) "webots_ros/lidar_get_infoRequest")
(setf (get webots_ros::lidar_get_infoRequest :definition-)
      "uint8 ask
---
uint32 horizontalResolution
uint32 numberOfLayers
float64 fov
float64 verticalFov
float64 minRange
float64 maxRange

")

(setf (get webots_ros::lidar_get_infoResponse :md5sum-) "d69a9b3d17121f1bdd796764ea53059a")
(setf (get webots_ros::lidar_get_infoResponse :datatype-) "webots_ros/lidar_get_infoResponse")
(setf (get webots_ros::lidar_get_infoResponse :definition-)
      "uint8 ask
---
uint32 horizontalResolution
uint32 numberOfLayers
float64 fov
float64 verticalFov
float64 minRange
float64 maxRange

")



(provide :webots_ros/lidar_get_info "d69a9b3d17121f1bdd796764ea53059a")


