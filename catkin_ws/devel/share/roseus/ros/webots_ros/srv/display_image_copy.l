;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_image_copy)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_image_copy (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_COPY")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_COPY"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_COPYREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_COPYREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_COPYRESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_COPYRESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_image_copyRequest
  :super ros::object
  :slots (_x _y _width _height ))

(defmethod webots_ros::display_image_copyRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::display_image_copyResponse
  :super ros::object
  :slots (_ir ))

(defmethod webots_ros::display_image_copyResponse
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

(defclass webots_ros::display_image_copy
  :super ros::object
  :slots ())

(setf (get webots_ros::display_image_copy :md5sum-) "631fd4626b960a90b6a634bededf2cea")
(setf (get webots_ros::display_image_copy :datatype-) "webots_ros/display_image_copy")
(setf (get webots_ros::display_image_copy :request) webots_ros::display_image_copyRequest)
(setf (get webots_ros::display_image_copy :response) webots_ros::display_image_copyResponse)

(defmethod webots_ros::display_image_copyRequest
  (:response () (instance webots_ros::display_image_copyResponse :init)))

(setf (get webots_ros::display_image_copyRequest :md5sum-) "631fd4626b960a90b6a634bededf2cea")
(setf (get webots_ros::display_image_copyRequest :datatype-) "webots_ros/display_image_copyRequest")
(setf (get webots_ros::display_image_copyRequest :definition-)
      "int32 x
int32 y
int32 width
int32 height
---
uint64 ir

")

(setf (get webots_ros::display_image_copyResponse :md5sum-) "631fd4626b960a90b6a634bededf2cea")
(setf (get webots_ros::display_image_copyResponse :datatype-) "webots_ros/display_image_copyResponse")
(setf (get webots_ros::display_image_copyResponse :definition-)
      "int32 x
int32 y
int32 width
int32 height
---
uint64 ir

")



(provide :webots_ros/display_image_copy "631fd4626b960a90b6a634bededf2cea")


