;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_import_node_from_string)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_import_node_from_string (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_IMPORT_NODE_FROM_STRING")
  (make-package "WEBOTS_ROS::FIELD_IMPORT_NODE_FROM_STRING"))
(unless (find-package "WEBOTS_ROS::FIELD_IMPORT_NODE_FROM_STRINGREQUEST")
  (make-package "WEBOTS_ROS::FIELD_IMPORT_NODE_FROM_STRINGREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_IMPORT_NODE_FROM_STRINGRESPONSE")
  (make-package "WEBOTS_ROS::FIELD_IMPORT_NODE_FROM_STRINGRESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_import_node_from_stringRequest
  :super ros::object
  :slots (_field _position _nodeString ))

(defmethod webots_ros::field_import_node_from_stringRequest
  (:init
   (&key
    ((:field __field) 0)
    ((:position __position) 0)
    ((:nodeString __nodeString) "")
    )
   (send-super :init)
   (setq _field (round __field))
   (setq _position (round __position))
   (setq _nodeString (string __nodeString))
   self)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:nodeString
   (&optional __nodeString)
   (if __nodeString (setq _nodeString __nodeString)) _nodeString)
  (:serialization-length
   ()
   (+
    ;; uint64 _field
    8
    ;; int32 _position
    4
    ;; string _nodeString
    4 (length _nodeString)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _field
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _field (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _field) (= (length (_field . bv)) 2)) ;; bignum
              (write-long (ash (elt (_field . bv) 0) 0) s)
              (write-long (ash (elt (_field . bv) 1) -1) s))
             ((and (class _field) (= (length (_field . bv)) 1)) ;; big1
              (write-long (elt (_field . bv) 0) s)
              (write-long (if (>= _field 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _field s)(write-long (if (>= _field 0) 0 #xffffffff) s)))
     ;; int32 _position
       (write-long _position s)
     ;; string _nodeString
       (write-long (length _nodeString) s) (princ _nodeString s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _field
     
#+(or :alpha :irix6 :x86_64)
      (setf _field (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _field (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _nodeString
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nodeString (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::field_import_node_from_stringResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::field_import_node_from_stringResponse
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
    ;; int32 _success
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _success
       (write-long _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _success
     (setq _success (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass webots_ros::field_import_node_from_string
  :super ros::object
  :slots ())

(setf (get webots_ros::field_import_node_from_string :md5sum-) "f47a09684279b85c2c8ae161048ce7d0")
(setf (get webots_ros::field_import_node_from_string :datatype-) "webots_ros/field_import_node_from_string")
(setf (get webots_ros::field_import_node_from_string :request) webots_ros::field_import_node_from_stringRequest)
(setf (get webots_ros::field_import_node_from_string :response) webots_ros::field_import_node_from_stringResponse)

(defmethod webots_ros::field_import_node_from_stringRequest
  (:response () (instance webots_ros::field_import_node_from_stringResponse :init)))

(setf (get webots_ros::field_import_node_from_stringRequest :md5sum-) "f47a09684279b85c2c8ae161048ce7d0")
(setf (get webots_ros::field_import_node_from_stringRequest :datatype-) "webots_ros/field_import_node_from_stringRequest")
(setf (get webots_ros::field_import_node_from_stringRequest :definition-)
      "uint64 field
int32 position
string nodeString
---
int32 success

")

(setf (get webots_ros::field_import_node_from_stringResponse :md5sum-) "f47a09684279b85c2c8ae161048ce7d0")
(setf (get webots_ros::field_import_node_from_stringResponse :datatype-) "webots_ros/field_import_node_from_stringResponse")
(setf (get webots_ros::field_import_node_from_stringResponse :definition-)
      "uint64 field
int32 position
string nodeString
---
int32 success

")



(provide :webots_ros/field_import_node_from_string "f47a09684279b85c2c8ae161048ce7d0")


