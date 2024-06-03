;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::range_finder_get_info)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'range_finder_get_info (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::RANGE_FINDER_GET_INFO")
  (make-package "WEBOTS_ROS::RANGE_FINDER_GET_INFO"))
(unless (find-package "WEBOTS_ROS::RANGE_FINDER_GET_INFOREQUEST")
  (make-package "WEBOTS_ROS::RANGE_FINDER_GET_INFOREQUEST"))
(unless (find-package "WEBOTS_ROS::RANGE_FINDER_GET_INFORESPONSE")
  (make-package "WEBOTS_ROS::RANGE_FINDER_GET_INFORESPONSE"))

(in-package "ROS")





(defclass webots_ros::range_finder_get_infoRequest
  :super ros::object
  :slots (_ask ))

(defmethod webots_ros::range_finder_get_infoRequest
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

(defclass webots_ros::range_finder_get_infoResponse
  :super ros::object
  :slots (_width _height _Fov _minRange _maxRange ))

(defmethod webots_ros::range_finder_get_infoResponse
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    ((:Fov __Fov) 0.0)
    ((:minRange __minRange) 0.0)
    ((:maxRange __maxRange) 0.0)
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _Fov (float __Fov))
   (setq _minRange (float __minRange))
   (setq _maxRange (float __maxRange))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:Fov
   (&optional __Fov)
   (if __Fov (setq _Fov __Fov)) _Fov)
  (:minRange
   (&optional __minRange)
   (if __minRange (setq _minRange __minRange)) _minRange)
  (:maxRange
   (&optional __maxRange)
   (if __maxRange (setq _maxRange __maxRange)) _maxRange)
  (:serialization-length
   ()
   (+
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ;; float64 _Fov
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
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;; float64 _Fov
       (sys::poke _Fov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _minRange
       (sys::poke _minRange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _maxRange
       (sys::poke _maxRange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _Fov
     (setq _Fov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _minRange
     (setq _minRange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _maxRange
     (setq _maxRange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::range_finder_get_info
  :super ros::object
  :slots ())

(setf (get webots_ros::range_finder_get_info :md5sum-) "7de8466f9b36888a8538ac7cacbb5d90")
(setf (get webots_ros::range_finder_get_info :datatype-) "webots_ros/range_finder_get_info")
(setf (get webots_ros::range_finder_get_info :request) webots_ros::range_finder_get_infoRequest)
(setf (get webots_ros::range_finder_get_info :response) webots_ros::range_finder_get_infoResponse)

(defmethod webots_ros::range_finder_get_infoRequest
  (:response () (instance webots_ros::range_finder_get_infoResponse :init)))

(setf (get webots_ros::range_finder_get_infoRequest :md5sum-) "7de8466f9b36888a8538ac7cacbb5d90")
(setf (get webots_ros::range_finder_get_infoRequest :datatype-) "webots_ros/range_finder_get_infoRequest")
(setf (get webots_ros::range_finder_get_infoRequest :definition-)
      "uint8 ask
---
uint32 width
uint32 height
float64 Fov
float64 minRange
float64 maxRange

")

(setf (get webots_ros::range_finder_get_infoResponse :md5sum-) "7de8466f9b36888a8538ac7cacbb5d90")
(setf (get webots_ros::range_finder_get_infoResponse :datatype-) "webots_ros/range_finder_get_infoResponse")
(setf (get webots_ros::range_finder_get_infoResponse :definition-)
      "uint8 ask
---
uint32 width
uint32 height
float64 Fov
float64 minRange
float64 maxRange

")



(provide :webots_ros/range_finder_get_info "7de8466f9b36888a8538ac7cacbb5d90")


