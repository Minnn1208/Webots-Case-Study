;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_image_new)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_image_new (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_NEW")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_NEW"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_NEWREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_NEWREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_NEWRESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_NEWRESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_image_newRequest
  :super ros::object
  :slots (_width _height _data _format ))

(defmethod webots_ros::display_image_newRequest
  (:init
   (&key
    ((:width __width) 0)
    ((:height __height) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:format __format) 0)
    )
   (send-super :init)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _data __data)
   (setq _format (round __format))
   self)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:serialization-length
   ()
   (+
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; char[] _data
    (* 1    (length _data)) 4
    ;; int32 _format
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; char[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;; int32 _format
       (write-long _format s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; char[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;; int32 _format
     (setq _format (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::display_image_newResponse
  :super ros::object
  :slots (_ir ))

(defmethod webots_ros::display_image_newResponse
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

(defclass webots_ros::display_image_new
  :super ros::object
  :slots ())

(setf (get webots_ros::display_image_new :md5sum-) "80a036f354960d09033ab0f8d6dffcf7")
(setf (get webots_ros::display_image_new :datatype-) "webots_ros/display_image_new")
(setf (get webots_ros::display_image_new :request) webots_ros::display_image_newRequest)
(setf (get webots_ros::display_image_new :response) webots_ros::display_image_newResponse)

(defmethod webots_ros::display_image_newRequest
  (:response () (instance webots_ros::display_image_newResponse :init)))

(setf (get webots_ros::display_image_newRequest :md5sum-) "80a036f354960d09033ab0f8d6dffcf7")
(setf (get webots_ros::display_image_newRequest :datatype-) "webots_ros/display_image_newRequest")
(setf (get webots_ros::display_image_newRequest :definition-)
      "int32 width
int32 height
char[] data
int32 format
---
uint64 ir

")

(setf (get webots_ros::display_image_newResponse :md5sum-) "80a036f354960d09033ab0f8d6dffcf7")
(setf (get webots_ros::display_image_newResponse :datatype-) "webots_ros/display_image_newResponse")
(setf (get webots_ros::display_image_newResponse :definition-)
      "int32 width
int32 height
char[] data
int32 format
---
uint64 ir

")



(provide :webots_ros/display_image_new "80a036f354960d09033ab0f8d6dffcf7")


