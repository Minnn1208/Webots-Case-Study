;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_image_load)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_image_load (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_LOAD")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_LOAD"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_LOADREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_LOADREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_LOADRESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_LOADRESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_image_loadRequest
  :super ros::object
  :slots (_filename ))

(defmethod webots_ros::display_image_loadRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::display_image_loadResponse
  :super ros::object
  :slots (_ir ))

(defmethod webots_ros::display_image_loadResponse
  (:init
   (&key
    ((:ir __ir) 0)
    )
   (send-super :init)
   (setq _ir (round __ir))
   self)
  (:ir
   (&optional __ir)
   (if __ir (setq _ir __ir)) _ir)
  (:serialization-length
   ()
   (+
    ;; uint64 _ir
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _ir
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ir (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ir) (= (length (_ir . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ir . bv) 0) 0) s)
              (write-long (ash (elt (_ir . bv) 1) -1) s))
             ((and (class _ir) (= (length (_ir . bv)) 1)) ;; big1
              (write-long (elt (_ir . bv) 0) s)
              (write-long (if (>= _ir 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ir s)(write-long (if (>= _ir 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _ir
     
#+(or :alpha :irix6 :x86_64)
      (setf _ir (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ir (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass webots_ros::display_image_load
  :super ros::object
  :slots ())

(setf (get webots_ros::display_image_load :md5sum-) "5c71ee48be952f1ade34fd3da67710f3")
(setf (get webots_ros::display_image_load :datatype-) "webots_ros/display_image_load")
(setf (get webots_ros::display_image_load :request) webots_ros::display_image_loadRequest)
(setf (get webots_ros::display_image_load :response) webots_ros::display_image_loadResponse)

(defmethod webots_ros::display_image_loadRequest
  (:response () (instance webots_ros::display_image_loadResponse :init)))

(setf (get webots_ros::display_image_loadRequest :md5sum-) "5c71ee48be952f1ade34fd3da67710f3")
(setf (get webots_ros::display_image_loadRequest :datatype-) "webots_ros/display_image_loadRequest")
(setf (get webots_ros::display_image_loadRequest :definition-)
      "string filename
---
uint64 ir

")

(setf (get webots_ros::display_image_loadResponse :md5sum-) "5c71ee48be952f1ade34fd3da67710f3")
(setf (get webots_ros::display_image_loadResponse :datatype-) "webots_ros/display_image_loadResponse")
(setf (get webots_ros::display_image_loadResponse :definition-)
      "string filename
---
uint64 ir

")



(provide :webots_ros/display_image_load "5c71ee48be952f1ade34fd3da67710f3")


