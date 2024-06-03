;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::speaker_speak)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'speaker_speak (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SPEAKER_SPEAK")
  (make-package "WEBOTS_ROS::SPEAKER_SPEAK"))
(unless (find-package "WEBOTS_ROS::SPEAKER_SPEAKREQUEST")
  (make-package "WEBOTS_ROS::SPEAKER_SPEAKREQUEST"))
(unless (find-package "WEBOTS_ROS::SPEAKER_SPEAKRESPONSE")
  (make-package "WEBOTS_ROS::SPEAKER_SPEAKRESPONSE"))

(in-package "ROS")





(defclass webots_ros::speaker_speakRequest
  :super ros::object
  :slots (_text _volume ))

(defmethod webots_ros::speaker_speakRequest
  (:init
   (&key
    ((:text __text) "")
    ((:volume __volume) 0.0)
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _volume (float __volume))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:volume
   (&optional __volume)
   (if __volume (setq _volume __volume)) _volume)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; float64 _volume
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; float64 _volume
       (sys::poke _volume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _volume
     (setq _volume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass webots_ros::speaker_speakResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::speaker_speakResponse
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

(defclass webots_ros::speaker_speak
  :super ros::object
  :slots ())

(setf (get webots_ros::speaker_speak :md5sum-) "bc987d1a1839d594218b7c1d6a77ba5e")
(setf (get webots_ros::speaker_speak :datatype-) "webots_ros/speaker_speak")
(setf (get webots_ros::speaker_speak :request) webots_ros::speaker_speakRequest)
(setf (get webots_ros::speaker_speak :response) webots_ros::speaker_speakResponse)

(defmethod webots_ros::speaker_speakRequest
  (:response () (instance webots_ros::speaker_speakResponse :init)))

(setf (get webots_ros::speaker_speakRequest :md5sum-) "bc987d1a1839d594218b7c1d6a77ba5e")
(setf (get webots_ros::speaker_speakRequest :datatype-) "webots_ros/speaker_speakRequest")
(setf (get webots_ros::speaker_speakRequest :definition-)
      "string text
float64 volume
---
int8 success

")

(setf (get webots_ros::speaker_speakResponse :md5sum-) "bc987d1a1839d594218b7c1d6a77ba5e")
(setf (get webots_ros::speaker_speakResponse :datatype-) "webots_ros/speaker_speakResponse")
(setf (get webots_ros::speaker_speakResponse :definition-)
      "string text
float64 volume
---
int8 success

")



(provide :webots_ros/speaker_speak "bc987d1a1839d594218b7c1d6a77ba5e")


