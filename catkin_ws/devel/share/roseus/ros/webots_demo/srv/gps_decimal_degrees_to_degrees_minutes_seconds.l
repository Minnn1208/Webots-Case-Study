;; Auto-generated. Do not edit!


(when (boundp 'webots_demo::gps_decimal_degrees_to_degrees_minutes_seconds)
  (if (not (find-package "WEBOTS_DEMO"))
    (make-package "WEBOTS_DEMO"))
  (shadow 'gps_decimal_degrees_to_degrees_minutes_seconds (find-package "WEBOTS_DEMO")))
(unless (find-package "WEBOTS_DEMO::GPS_DECIMAL_DEGREES_TO_DEGREES_MINUTES_SECONDS")
  (make-package "WEBOTS_DEMO::GPS_DECIMAL_DEGREES_TO_DEGREES_MINUTES_SECONDS"))
(unless (find-package "WEBOTS_DEMO::GPS_DECIMAL_DEGREES_TO_DEGREES_MINUTES_SECONDSREQUEST")
  (make-package "WEBOTS_DEMO::GPS_DECIMAL_DEGREES_TO_DEGREES_MINUTES_SECONDSREQUEST"))
(unless (find-package "WEBOTS_DEMO::GPS_DECIMAL_DEGREES_TO_DEGREES_MINUTES_SECONDSRESPONSE")
  (make-package "WEBOTS_DEMO::GPS_DECIMAL_DEGREES_TO_DEGREES_MINUTES_SECONDSRESPONSE"))

(in-package "ROS")





(defclass webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsRequest
  :super ros::object
  :slots (_decimalDegrees ))

(defmethod webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsRequest
  (:init
   (&key
    ((:decimalDegrees __decimalDegrees) 0.0)
    )
   (send-super :init)
   (setq _decimalDegrees (float __decimalDegrees))
   self)
  (:decimalDegrees
   (&optional __decimalDegrees)
   (if __decimalDegrees (setq _decimalDegrees __decimalDegrees)) _decimalDegrees)
  (:serialization-length
   ()
   (+
    ;; float32 _decimalDegrees
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _decimalDegrees
       (sys::poke _decimalDegrees (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _decimalDegrees
     (setq _decimalDegrees (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsResponse
  :super ros::object
  :slots (_degreesMinutesSeconds ))

(defmethod webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsResponse
  (:init
   (&key
    ((:degreesMinutesSeconds __degreesMinutesSeconds) "")
    )
   (send-super :init)
   (setq _degreesMinutesSeconds (string __degreesMinutesSeconds))
   self)
  (:degreesMinutesSeconds
   (&optional __degreesMinutesSeconds)
   (if __degreesMinutesSeconds (setq _degreesMinutesSeconds __degreesMinutesSeconds)) _degreesMinutesSeconds)
  (:serialization-length
   ()
   (+
    ;; string _degreesMinutesSeconds
    4 (length _degreesMinutesSeconds)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _degreesMinutesSeconds
       (write-long (length _degreesMinutesSeconds) s) (princ _degreesMinutesSeconds s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _degreesMinutesSeconds
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _degreesMinutesSeconds (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_demo::gps_decimal_degrees_to_degrees_minutes_seconds
  :super ros::object
  :slots ())

(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_seconds :md5sum-) "2911ee9051e401397c9b1e29a01f7ead")
(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_seconds :datatype-) "webots_demo/gps_decimal_degrees_to_degrees_minutes_seconds")
(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_seconds :request) webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsRequest)
(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_seconds :response) webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsResponse)

(defmethod webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsRequest
  (:response () (instance webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsResponse :init)))

(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsRequest :md5sum-) "2911ee9051e401397c9b1e29a01f7ead")
(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsRequest :datatype-) "webots_demo/gps_decimal_degrees_to_degrees_minutes_secondsRequest")
(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsRequest :definition-)
      "float32 decimalDegrees
---
string degreesMinutesSeconds

")

(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsResponse :md5sum-) "2911ee9051e401397c9b1e29a01f7ead")
(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsResponse :datatype-) "webots_demo/gps_decimal_degrees_to_degrees_minutes_secondsResponse")
(setf (get webots_demo::gps_decimal_degrees_to_degrees_minutes_secondsResponse :definition-)
      "float32 decimalDegrees
---
string degreesMinutesSeconds

")



(provide :webots_demo/gps_decimal_degrees_to_degrees_minutes_seconds "2911ee9051e401397c9b1e29a01f7ead")


