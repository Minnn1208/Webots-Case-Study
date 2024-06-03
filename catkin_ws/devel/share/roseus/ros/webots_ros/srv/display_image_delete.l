;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::display_image_delete)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'display_image_delete (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_DELETE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_DELETE"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_DELETEREQUEST")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_DELETEREQUEST"))
(unless (find-package "WEBOTS_ROS::DISPLAY_IMAGE_DELETERESPONSE")
  (make-package "WEBOTS_ROS::DISPLAY_IMAGE_DELETERESPONSE"))

(in-package "ROS")





(defclass webots_ros::display_image_deleteRequest
  :super ros::object
  :slots (_ir ))

(defmethod webots_ros::display_image_deleteRequest
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

(defclass webots_ros::display_image_deleteResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::display_image_deleteResponse
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

(defclass webots_ros::display_image_delete
  :super ros::object
  :slots ())

(setf (get webots_ros::display_image_delete :md5sum-) "21daf18e23f8cc4ce4452efc995e69da")
(setf (get webots_ros::display_image_delete :datatype-) "webots_ros/display_image_delete")
(setf (get webots_ros::display_image_delete :request) webots_ros::display_image_deleteRequest)
(setf (get webots_ros::display_image_delete :response) webots_ros::display_image_deleteResponse)

(defmethod webots_ros::display_image_deleteRequest
  (:response () (instance webots_ros::display_image_deleteResponse :init)))

(setf (get webots_ros::display_image_deleteRequest :md5sum-) "21daf18e23f8cc4ce4452efc995e69da")
(setf (get webots_ros::display_image_deleteRequest :datatype-) "webots_ros/display_image_deleteRequest")
(setf (get webots_ros::display_image_deleteRequest :definition-)
      "uint64 ir
---
int8 success

")

(setf (get webots_ros::display_image_deleteResponse :md5sum-) "21daf18e23f8cc4ce4452efc995e69da")
(setf (get webots_ros::display_image_deleteResponse :datatype-) "webots_ros/display_image_deleteResponse")
(setf (get webots_ros::display_image_deleteResponse :definition-)
      "uint64 ir
---
int8 success

")



(provide :webots_ros/display_image_delete "21daf18e23f8cc4ce4452efc995e69da")


