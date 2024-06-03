;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::lidar_get_frequency_info)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'lidar_get_frequency_info (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_FREQUENCY_INFO")
  (make-package "WEBOTS_ROS::LIDAR_GET_FREQUENCY_INFO"))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_FREQUENCY_INFOREQUEST")
  (make-package "WEBOTS_ROS::LIDAR_GET_FREQUENCY_INFOREQUEST"))
(unless (find-package "WEBOTS_ROS::LIDAR_GET_FREQUENCY_INFORESPONSE")
  (make-package "WEBOTS_ROS::LIDAR_GET_FREQUENCY_INFORESPONSE"))

(in-package "ROS")





(defclass webots_ros::lidar_get_frequency_infoRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::lidar_get_frequency_infoRequest
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

(defclass webots_ros::lidar_get_frequency_infoResponse
  :super ros::object
  :slots (_frequency _minFrequency _maxFrequency ))

(defmethod webots_ros::lidar_get_frequency_infoResponse
  (:init
   (&key
    ((:frequency __frequency) 0.0)
    ((:minFrequency __minFrequency) 0.0)
    ((:maxFrequency __maxFrequency) 0.0)
    )
   (send-super :init)
   (setq _frequency (float __frequency))
   (setq _minFrequency (float __minFrequency))
   (setq _maxFrequency (float __maxFrequency))
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:minFrequency
   (&optional __minFrequency)
   (if __minFrequency (setq _minFrequency __minFrequency)) _minFrequency)
  (:maxFrequency
   (&optional __maxFrequency)
   (if __maxFrequency (setq _maxFrequency __maxFrequency)) _maxFrequency)
  (:serialization-length
   ()
   (+
    ;; float64 _frequency
    8
    ;; float64 _minFrequency
    8
    ;; float64 _maxFrequency
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _minFrequency
       (sys::poke _minFrequency (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxFrequency
       (sys::poke _maxFrequency (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _frequency
     (setq _frequency (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _minFrequency
     (setq _minFrequency (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxFrequency
     (setq _maxFrequency (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::lidar_get_frequency_info
  :super ros::object
  :slots ())

(setf (get webots_ros::lidar_get_frequency_info :md5sum-) "205acd1972da2259229a25bf7e756656")
(setf (get webots_ros::lidar_get_frequency_info :datatype-) "webots_ros/lidar_get_frequency_info")
(setf (get webots_ros::lidar_get_frequency_info :request) webots_ros::lidar_get_frequency_infoRequest)
(setf (get webots_ros::lidar_get_frequency_info :response) webots_ros::lidar_get_frequency_infoResponse)

(defmethod webots_ros::lidar_get_frequency_infoRequest
  (:response () (instance webots_ros::lidar_get_frequency_infoResponse :init)))

(setf (get webots_ros::lidar_get_frequency_infoRequest :md5sum-) "205acd1972da2259229a25bf7e756656")
(setf (get webots_ros::lidar_get_frequency_infoRequest :datatype-) "webots_ros/lidar_get_frequency_infoRequest")
(setf (get webots_ros::lidar_get_frequency_infoRequest :definition-)
      "uint8 ask
---
float64 frequency
float64 minFrequency
float64 maxFrequency

")

(setf (get webots_ros::lidar_get_frequency_infoResponse :md5sum-) "205acd1972da2259229a25bf7e756656")
(setf (get webots_ros::lidar_get_frequency_infoResponse :datatype-) "webots_ros/lidar_get_frequency_infoResponse")
(setf (get webots_ros::lidar_get_frequency_infoResponse :definition-)
      "uint8 ask
---
float64 frequency
float64 minFrequency
float64 maxFrequency

")



(provide :webots_ros/lidar_get_frequency_info "205acd1972da2259229a25bf7e756656")


