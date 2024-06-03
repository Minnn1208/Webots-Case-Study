;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::RadarTarget)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'RadarTarget (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::RADARTARGET")
  (make-package "WEBOTS_ROS::RADARTARGET"))

(in-package "ROS")
;;//! \htmlinclude RadarTarget.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass webots_ros::RadarTarget
  :super ros::object
  :slots (_header _distance _receivedPower _speed _azimuth ))

(defmethod webots_ros::RadarTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:distance __distance) 0.0)
    ((:receivedPower __receivedPower) 0.0)
    ((:speed __speed) 0.0)
    ((:azimuth __azimuth) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _distance (float __distance))
   (setq _receivedPower (float __receivedPower))
   (setq _speed (float __speed))
   (setq _azimuth (float __azimuth))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:receivedPower
   (&optional __receivedPower)
   (if __receivedPower (setq _receivedPower __receivedPower)) _receivedPower)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _distance
    8
    ;; float64 _receivedPower
    8
    ;; float64 _speed
    8
    ;; float64 _azimuth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _receivedPower
       (sys::poke _receivedPower (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _receivedPower
     (setq _receivedPower (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get webots_ros::RadarTarget :md5sum-) "39dda2b01810c27987f6a767b1a78c1c")
(setf (get webots_ros::RadarTarget :datatype-) "webots_ros/RadarTarget")
(setf (get webots_ros::RadarTarget :definition-)
      "Header header
float64 distance
float64 receivedPower
float64 speed
float64 azimuth

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :webots_ros/RadarTarget "39dda2b01810c27987f6a767b1a78c1c")


