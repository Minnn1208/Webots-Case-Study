;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::node_get_static_balance)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'node_get_static_balance (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::NODE_GET_STATIC_BALANCE")
  (make-package "WEBOTS_ROS::NODE_GET_STATIC_BALANCE"))
(unless (find-package "WEBOTS_ROS::NODE_GET_STATIC_BALANCEREQUEST")
  (make-package "WEBOTS_ROS::NODE_GET_STATIC_BALANCEREQUEST"))
(unless (find-package "WEBOTS_ROS::NODE_GET_STATIC_BALANCERESPONSE")
  (make-package "WEBOTS_ROS::NODE_GET_STATIC_BALANCERESPONSE"))

(in-package "ROS")





(defclass webots_ros::node_get_static_balanceRequest
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::node_get_static_balanceRequest
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

(defclass webots_ros::node_get_static_balanceResponse
  :super ros::object
  :slots (_balance ))

(defmethod webots_ros::node_get_static_balanceResponse
  (:init
   (&key
    ((:balance __balance) 0)
    )
   (send-super :init)
   (setq _balance (round __balance))
   self)
  (:balance
   (&optional __balance)
   (if __balance (setq _balance __balance)) _balance)
  (:serialization-length
   ()
   (+
    ;; uint8 _balance
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _balance
       (write-byte _balance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _balance
     (setq _balance (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass webots_ros::node_get_static_balance
  :super ros::object
  :slots ())

(setf (get webots_ros::node_get_static_balance :md5sum-) "1bb59681994e8cd9a01f91ec4bc81585")
(setf (get webots_ros::node_get_static_balance :datatype-) "webots_ros/node_get_static_balance")
(setf (get webots_ros::node_get_static_balance :request) webots_ros::node_get_static_balanceRequest)
(setf (get webots_ros::node_get_static_balance :response) webots_ros::node_get_static_balanceResponse)

(defmethod webots_ros::node_get_static_balanceRequest
  (:response () (instance webots_ros::node_get_static_balanceResponse :init)))

(setf (get webots_ros::node_get_static_balanceRequest :md5sum-) "1bb59681994e8cd9a01f91ec4bc81585")
(setf (get webots_ros::node_get_static_balanceRequest :datatype-) "webots_ros/node_get_static_balanceRequest")
(setf (get webots_ros::node_get_static_balanceRequest :definition-)
      "uint64 node
---
uint8 balance

")

(setf (get webots_ros::node_get_static_balanceResponse :md5sum-) "1bb59681994e8cd9a01f91ec4bc81585")
(setf (get webots_ros::node_get_static_balanceResponse :datatype-) "webots_ros/node_get_static_balanceResponse")
(setf (get webots_ros::node_get_static_balanceResponse :definition-)
      "uint64 node
---
uint8 balance

")



(provide :webots_ros/node_get_static_balance "1bb59681994e8cd9a01f91ec4bc81585")


