;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_name)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_name (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_NAME")
  (make-package "WEBOTS_ROS::NODE_GET_NAME"))
(unless (find-package "WEBOTS_ROS::NODE_GET_NAMEREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_NAMEREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_NAMERESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_NAMERESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_nameRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_nameRequest
  (:init
   (&key
    ((:node __node) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _node
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _node (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _node) (= (length (_node . bv)) 2)) ;; bignum
              (write-long (ash (elt (_node . bv) 0) 0) s)
              (write-long (ash (elt (_node . bv) 1) -1) s))
             ((and (class _node) (= (length (_node . bv)) 1)) ;; big1
              (write-long (elt (_node . bv) 0) s)
              (write-long (if (>= _node 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _node s)(write-long (if (>= _node 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _node
     
#+(or :alpha :irix6 :x86_64)
      (setf _node (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _node (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass webots_ros::node_get_nameResponse
  :super ros::object
  :slots (_name ))

(defmethod webots_ros::node_get_nameResponse
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::node_get_name
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_name :md5sum-) "51d3f5e9907c2b98d816acf3aad2e00e")
(setf (get webots_ros::node_get_name :datatype-) "webots_ros/node_get_name")
(setf (get webots_ros::node_get_name :request) webots_ros::node_get_nameRequest)
(setf (get webots_ros::node_get_name :response) webots_ros::node_get_nameResponse)

(defmethod webots_ros::node_get_nameRequest
  (:response () (instance webots_ros::node_get_nameResponse :init)))

(setf (get webots_ros::node_get_nameRequest :md5sum-) "51d3f5e9907c2b98d816acf3aad2e00e")
(setf (get webots_ros::node_get_nameRequest :datatype-) "webots_ros/node_get_nameRequest")
(setf (get webots_ros::node_get_nameRequest :definition-)
      "uint64 node
---
string name

")

(setf (get webots_ros::node_get_nameResponse :md5sum-) "51d3f5e9907c2b98d816acf3aad2e00e")
(setf (get webots_ros::node_get_nameResponse :datatype-) "webots_ros/node_get_nameResponse")
(setf (get webots_ros::node_get_nameResponse :definition-)
      "uint64 node
---
string name

")



(provide :webots_ros/node_get_name "51d3f5e9907c2b98d816acf3aad2e00e")


