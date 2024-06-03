;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::field_import_node)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'field_import_node (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::FIELD_IMPORT_NODE")
  (make-package "WEBOTS_ROS::FIELD_IMPORT_NODE"))
(unless (find-package "WEBOTS_ROS::FIELD_IMPORT_NODEREQUEST")
  (make-package "WEBOTS_ROS::FIELD_IMPORT_NODEREQUEST"))
(unless (find-package "WEBOTS_ROS::FIELD_IMPORT_NODERESPONSE")
  (make-package "WEBOTS_ROS::FIELD_IMPORT_NODERESPONSE"))

(in-package "ROS")





(defclass webots_ros::field_import_nodeRequest
  :super ros::object
  :slots (_field _position _filename ))

(defmethod webots_ros::field_import_nodeRequest
  (:init
   (&key
    ((:field __field) 0)
    ((:position __position) 0)
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _field (round __field))
   (setq _position (round __position))
   (setq _filename (string __filename))
   self)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; uint64 _field
    8
    ;; int32 _position
    4
    ;; string _filename
    4 (length _filename)
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
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
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
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::field_import_nodeResponse
  :super ros::object
  :slots (_success ))

(defmethod webots_ros::field_import_nodeResponse
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

(defclass webots_ros::field_import_node
  :super ros::object
  :slots ())

(setf (get webots_ros::field_import_node :md5sum-) "7ae35e4ee41afc3355320c40a4ed6624")
(setf (get webots_ros::field_import_node :datatype-) "webots_ros/field_import_node")
(setf (get webots_ros::field_import_node :request) webots_ros::field_import_nodeRequest)
(setf (get webots_ros::field_import_node :response) webots_ros::field_import_nodeResponse)

(defmethod webots_ros::field_import_nodeRequest
  (:response () (instance webots_ros::field_import_nodeResponse :init)))

(setf (get webots_ros::field_import_nodeRequest :md5sum-) "7ae35e4ee41afc3355320c40a4ed6624")
(setf (get webots_ros::field_import_nodeRequest :datatype-) "webots_ros/field_import_nodeRequest")
(setf (get webots_ros::field_import_nodeRequest :definition-)
      "uint64 field
int32 position
string filename
---
int32 success

")

(setf (get webots_ros::field_import_nodeResponse :md5sum-) "7ae35e4ee41afc3355320c40a4ed6624")
(setf (get webots_ros::field_import_nodeResponse :datatype-) "webots_ros/field_import_nodeResponse")
(setf (get webots_ros::field_import_nodeResponse :definition-)
      "uint64 field
int32 position
string filename
---
int32 success

")



(provide :webots_ros/field_import_node "7ae35e4ee41afc3355320c40a4ed6624")


