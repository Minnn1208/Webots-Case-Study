;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::speaker_play_sound)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'speaker_play_sound (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SPEAKER_PLAY_SOUND")
  (make-package "WEBOTS_ROS::SPEAKER_PLAY_SOUND"))
(unless (find-package "WEBOTS_ROS::SPEAKER_PLAY_SOUNDREQUEST")
  (make-package "WEBOTS_ROS::SPEAKER_PLAY_SOUNDREQUEST"))
(unless (find-package "WEBOTS_ROS::SPEAKER_PLAY_SOUNDRESPONSE")
  (make-package "WEBOTS_ROS::SPEAKER_PLAY_SOUNDRESPONSE"))

(in-package "ROS")





(defclass webots_ros::speaker_play_soundRequest
  :super ros::object
  :slots (_sound _volume _pitch _balance _loop ))

(defmethod webots_ros::speaker_play_soundRequest
  (:init
   (&key
    ((:sound __sound) "")
    ((:volume __volume) 0.0)
    ((:pitch __pitch) 0.0)
    ((:balance __balance) 0.0)
    ((:loop __loop) 0)
    )
   (send-super :init)
   (setq _sound (string __sound))
   (setq _volume (float __volume))
   (setq _pitch (float __pitch))
   (setq _balance (float __balance))
   (setq _loop (round __loop))
   self)
  (:sound
   (&optional __sound)
   (if __sound (setq _sound __sound)) _sound)
  (:volume
   (&optional __volume)
   (if __volume (setq _volume __volume)) _volume)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:balance
   (&optional __balance)
   (if __balance (setq _balance __balance)) _balance)
  (:loop
   (&optional __loop)
   (if __loop (setq _loop __loop)) _loop)
  (:serialization-length
   ()
   (+
    ;; string _sound
    4 (length _sound)
    ;; float64 _volume
    8
    ;; float64 _pitch
    8
    ;; float64 _balance
    8
    ;; int8 _loop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sound
       (write-long (length _sound) s) (princ _sound s)
     ;; float64 _volume
       (sys::poke _volume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _balance
       (sys::poke _balance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _loop
       (write-byte _loop s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sound
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sound (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _volume
     (setq _volume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _balance
     (setq _balance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _loop
     (setq _loop (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _loop 127) (setq _loop (- _loop 256)))
   ;;
   self)
  )

(defclass webots_ros::speaker_play_soundResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::speaker_play_soundResponse
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

(defclass webots_ros::speaker_play_sound
  :super ros::object
  :slots ())

(setf (get webots_ros::speaker_play_sound :md5sum-) "9c17e6742fccca17f3542e68a9800dd3")
(setf (get webots_ros::speaker_play_sound :datatype-) "webots_ros/speaker_play_sound")
(setf (get webots_ros::speaker_play_sound :request) webots_ros::speaker_play_soundRequest)
(setf (get webots_ros::speaker_play_sound :response) webots_ros::speaker_play_soundResponse)

(defmethod webots_ros::speaker_play_soundRequest
  (:response () (instance webots_ros::speaker_play_soundResponse :init)))

(setf (get webots_ros::speaker_play_soundRequest :md5sum-) "9c17e6742fccca17f3542e68a9800dd3")
(setf (get webots_ros::speaker_play_soundRequest :datatype-) "webots_ros/speaker_play_soundRequest")
(setf (get webots_ros::speaker_play_soundRequest :definition-)
      "string sound
float64 volume
float64 pitch
float64 balance
int8 loop
---
int8 success

")

(setf (get webots_ros::speaker_play_soundResponse :md5sum-) "9c17e6742fccca17f3542e68a9800dd3")
(setf (get webots_ros::speaker_play_soundResponse :datatype-) "webots_ros/speaker_play_soundResponse")
(setf (get webots_ros::speaker_play_soundResponse :definition-)
      "string sound
float64 volume
float64 pitch
float64 balance
int8 loop
---
int8 success

")



(provide :webots_ros/speaker_play_sound "9c17e6742fccca17f3542e68a9800dd3")


