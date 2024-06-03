;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::supervisor_movie_start_recording)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'supervisor_movie_start_recording (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_MOVIE_START_RECORDING")
  (make-package "WEBOTS_ROS::SUPERVISOR_MOVIE_START_RECORDING"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_MOVIE_START_RECORDINGREQUEST")
  (make-package "WEBOTS_ROS::SUPERVISOR_MOVIE_START_RECORDINGREQUEST"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_MOVIE_START_RECORDINGRESPONSE")
  (make-package "WEBOTS_ROS::SUPERVISOR_MOVIE_START_RECORDINGRESPONSE"))

(in-package "ROS")





(defclass webots_ros::supervisor_movie_start_recordingRequest
  :super ros::object
  :slots (_filename _width _height _codec _quality _acceleration _caption ))

(defmethod webots_ros::supervisor_movie_start_recordingRequest
  (:init
   (&key
    ((:filename __filename) "")
    ((:width __width) 0)
    ((:height __height) 0)
    ((:codec __codec) 0)
    ((:quality __quality) 0)
    ((:acceleration __acceleration) 0)
    ((:caption __caption) 0)
    )
   (send-super :init)
   (setq _filename (string __filename))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _codec (round __codec))
   (setq _quality (round __quality))
   (setq _acceleration (round __acceleration))
   (setq _caption (round __caption))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:codec
   (&optional __codec)
   (if __codec (setq _codec __codec)) _codec)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:caption
   (&optional __caption)
   (if __caption (setq _caption __caption)) _caption)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; int32 _codec
    4
    ;; int32 _quality
    4
    ;; int32 _acceleration
    4
    ;; uint8 _caption
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _codec
       (write-long _codec s)
     ;; int32 _quality
       (write-long _quality s)
     ;; int32 _acceleration
       (write-long _acceleration s)
     ;; uint8 _caption
       (write-byte _caption s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _codec
     (setq _codec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _quality
     (setq _quality (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _acceleration
     (setq _acceleration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _caption
     (setq _caption (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::supervisor_movie_start_recordingResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::supervisor_movie_start_recordingResponse
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

(defclass webots_ros::supervisor_movie_start_recording
  :super ros::object
  :slots ())

(setf (get webots_ros::supervisor_movie_start_recording :md5sum-) "96ca298eece1e7a6fe756c404839bdcc")
(setf (get webots_ros::supervisor_movie_start_recording :datatype-) "webots_ros/supervisor_movie_start_recording")
(setf (get webots_ros::supervisor_movie_start_recording :request) webots_ros::supervisor_movie_start_recordingRequest)
(setf (get webots_ros::supervisor_movie_start_recording :response) webots_ros::supervisor_movie_start_recordingResponse)

(defmethod webots_ros::supervisor_movie_start_recordingRequest
  (:response () (instance webots_ros::supervisor_movie_start_recordingResponse :init)))

(setf (get webots_ros::supervisor_movie_start_recordingRequest :md5sum-) "96ca298eece1e7a6fe756c404839bdcc")
(setf (get webots_ros::supervisor_movie_start_recordingRequest :datatype-) "webots_ros/supervisor_movie_start_recordingRequest")
(setf (get webots_ros::supervisor_movie_start_recordingRequest :definition-)
      "string filename
int32 width
int32 height
int32 codec
int32 quality
int32 acceleration
uint8 caption
---
int8 success

")

(setf (get webots_ros::supervisor_movie_start_recordingResponse :md5sum-) "96ca298eece1e7a6fe756c404839bdcc")
(setf (get webots_ros::supervisor_movie_start_recordingResponse :datatype-) "webots_ros/supervisor_movie_start_recordingResponse")
(setf (get webots_ros::supervisor_movie_start_recordingResponse :definition-)
      "string filename
int32 width
int32 height
int32 codec
int32 quality
int32 acceleration
uint8 caption
---
int8 success

")



(provide :webots_ros/supervisor_movie_start_recording "96ca298eece1e7a6fe756c404839bdcc")


