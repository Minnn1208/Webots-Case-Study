;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_image_paste)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_image_paste (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_PASTE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_PASTE"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_PASTEREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_PASTEREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_PASTERESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_PASTERESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_image_pasteRequest
  :super ros::object
  :slots (_ir _x _y _blend ))

(defmethod webots_ros::display_image_pasteRequest
  (:init
   (&key
    ((:ir __ir) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:blend __blend) 0)
    )
   (send-super :init)
   (setq _ir (round __ir))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _blend (round __blend))
   self)
  (:ir
   (&optional __ir)
   (if __ir (setq _ir __ir)) _ir)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:blend
   (&optional __blend)
   (if __blend (setq _blend __blend)) _blend)
  (:serialization-length
   ()
   (+
    ;; uint64 _ir
    8
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; uint8 _blend
    1
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
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; uint8 _blend
       (write-byte _blend s)
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
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _blend
     (setq _blend (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::display_image_pasteResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_image_pasteResponse
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

(defclass webots_ros::display_image_paste
  :super ros::object
  :slots ())

(setf (get webots_ros::display_image_paste :md5sum-) "58100642be61cff1b755b0787ba1decc")
(setf (get webots_ros::display_image_paste :datatype-) "webots_ros/display_image_paste")
(setf (get webots_ros::display_image_paste :request) webots_ros::display_image_pasteRequest)
(setf (get webots_ros::display_image_paste :response) webots_ros::display_image_pasteResponse)

(defmethod webots_ros::display_image_pasteRequest
  (:response () (instance webots_ros::display_image_pasteResponse :init)))

(setf (get webots_ros::display_image_pasteRequest :md5sum-) "58100642be61cff1b755b0787ba1decc")
(setf (get webots_ros::display_image_pasteRequest :datatype-) "webots_ros/display_image_pasteRequest")
(setf (get webots_ros::display_image_pasteRequest :definition-)
      "uint64 ir
int32 x
int32 y
uint8 blend
---
int8 success

")

(setf (get webots_ros::display_image_pasteResponse :md5sum-) "58100642be61cff1b755b0787ba1decc")
(setf (get webots_ros::display_image_pasteResponse :datatype-) "webots_ros/display_image_pasteResponse")
(setf (get webots_ros::display_image_pasteResponse :definition-)
      "uint64 ir
int32 x
int32 y
uint8 blend
---
int8 success

")



(provide :webots_ros/display_image_paste "58100642be61cff1b755b0787ba1decc")


