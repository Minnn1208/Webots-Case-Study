;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_image_save)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_image_save (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_SAVE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_SAVE"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_SAVEREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_SAVEREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_SAVERESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_SAVERESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_image_saveRequest
  :super ros::object
  :slots (_filename _ir ))

(defmethod webots_ros::display_image_saveRequest
  (:init
   (&key
    ((:filename __filename) "")
    ((:ir __ir) 0)
    )
   (send-super :init)
   (setq _filename (string __filename))
   (setq _ir (round __ir))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:ir
   (&optional __ir)
   (if __ir (setq _ir __ir)) _ir)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ;; uint64 _ir
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
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
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass webots_ros::display_image_saveResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_image_saveResponse
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

(defclass webots_ros::display_image_save
  :super ros::object
  :slots ())

(setf (get webots_ros::display_image_save :md5sum-) "e0d9a6b0c2c4d70d173cf3baf8d7df7c")
(setf (get webots_ros::display_image_save :datatype-) "webots_ros/display_image_save")
(setf (get webots_ros::display_image_save :request) webots_ros::display_image_saveRequest)
(setf (get webots_ros::display_image_save :response) webots_ros::display_image_saveResponse)

(defmethod webots_ros::display_image_saveRequest
  (:response () (instance webots_ros::display_image_saveResponse :init)))

(setf (get webots_ros::display_image_saveRequest :md5sum-) "e0d9a6b0c2c4d70d173cf3baf8d7df7c")
(setf (get webots_ros::display_image_saveRequest :datatype-) "webots_ros/display_image_saveRequest")
(setf (get webots_ros::display_image_saveRequest :definition-)
      "string filename
uint64 ir
---
int8 success

")

(setf (get webots_ros::display_image_saveResponse :md5sum-) "e0d9a6b0c2c4d70d173cf3baf8d7df7c")
(setf (get webots_ros::display_image_saveResponse :datatype-) "webots_ros/display_image_saveResponse")
(setf (get webots_ros::display_image_saveResponse :definition-)
      "string filename
uint64 ir
---
int8 success

")



(provide :webots_ros/display_image_save "e0d9a6b0c2c4d70d173cf3baf8d7df7c")


