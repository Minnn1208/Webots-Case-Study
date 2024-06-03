;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::speaker_is_sound_playing)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'speaker_is_sound_playing (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SPEAKER_IS_SOUND_PLAYING")
  (make-package "WEBOTS_ROS::SPEAKER_IS_SOUND_PLAYING"))
(unless (find-package "WEBOTS_ROS::SPEAKER_IS_SOUND_PLAYINGREQUEST")
  (make-package "WEBOTS_ROS::SPEAKER_IS_SOUND_PLAYINGREQUEST"))
(unless (find-package "WEBOTS_ROS::SPEAKER_IS_SOUND_PLAYINGRESPONSE")
  (make-package "WEBOTS_ROS::SPEAKER_IS_SOUND_PLAYINGRESPONSE"))

(in-package "ROS")





(defclass webots_ros::speaker_is_sound_playingRequest
  :super ros::object
  :slots (_sound ))

(defmethod webots_ros::speaker_is_sound_playingRequest
  (:init
   (&key
    ((:sound __sound) "")
    )
   (send-super :init)
   (setq _sound (string __sound))
   self)
  (:sound
   (&optional __sound)
   (if __sound (setq _sound __sound)) _sound)
  (:serialization-length
   ()
   (+
    ;; string _sound
    4 (length _sound)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sound
       (write-long (length _sound) s) (princ _sound s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sound
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sound (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::speaker_is_sound_playingResponse
  :super ros::object
  :slots (_value ))

(defmethod webots_ros::speaker_is_sound_playingResponse
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::speaker_is_sound_playing
  :super ros::object
  :slots ())

(setf (get webots_ros::speaker_is_sound_playing :md5sum-) "5e90e3a791904b68b561b7067a8d366b")
(setf (get webots_ros::speaker_is_sound_playing :datatype-) "webots_ros/speaker_is_sound_playing")
(setf (get webots_ros::speaker_is_sound_playing :request) webots_ros::speaker_is_sound_playingRequest)
(setf (get webots_ros::speaker_is_sound_playing :response) webots_ros::speaker_is_sound_playingResponse)

(defmethod webots_ros::speaker_is_sound_playingRequest
  (:response () (instance webots_ros::speaker_is_sound_playingResponse :init)))

(setf (get webots_ros::speaker_is_sound_playingRequest :md5sum-) "5e90e3a791904b68b561b7067a8d366b")
(setf (get webots_ros::speaker_is_sound_playingRequest :datatype-) "webots_ros/speaker_is_sound_playingRequest")
(setf (get webots_ros::speaker_is_sound_playingRequest :definition-)
      "string sound
---
bool value

")

(setf (get webots_ros::speaker_is_sound_playingResponse :md5sum-) "5e90e3a791904b68b561b7067a8d366b")
(setf (get webots_ros::speaker_is_sound_playingResponse :datatype-) "webots_ros/speaker_is_sound_playingResponse")
(setf (get webots_ros::speaker_is_sound_playingResponse :definition-)
      "string sound
---
bool value

")



(provide :webots_ros/speaker_is_sound_playing "5e90e3a791904b68b561b7067a8d366b")


