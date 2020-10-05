;; Auto-generated. Do not edit!


(when (boundp 'minerva2_iface::Navipac)
  (if (not (find-package "MINERVA2_IFACE"))
    (make-package "MINERVA2_IFACE"))
  (shadow 'Navipac (find-package "MINERVA2_IFACE")))
(unless (find-package "MINERVA2_IFACE::NAVIPAC")
  (make-package "MINERVA2_IFACE::NAVIPAC"))

(in-package "ROS")
;;//! \htmlinclude Navipac.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass minerva2_iface::Navipac
  :super ros::object
  :slots (_header _north _east _down _u _v _w ))

(defmethod minerva2_iface::Navipac
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:north __north) (instance std_msgs::Float32 :init))
    ((:east __east) (instance std_msgs::Float32 :init))
    ((:down __down) (instance std_msgs::Float32 :init))
    ((:u __u) (instance std_msgs::Float32 :init))
    ((:v __v) (instance std_msgs::Float32 :init))
    ((:w __w) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _north __north)
   (setq _east __east)
   (setq _down __down)
   (setq _u __u)
   (setq _v __v)
   (setq _w __w)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:north
   (&rest __north)
   (if (keywordp (car __north))
       (send* _north __north)
     (progn
       (if __north (setq _north (car __north)))
       _north)))
  (:east
   (&rest __east)
   (if (keywordp (car __east))
       (send* _east __east)
     (progn
       (if __east (setq _east (car __east)))
       _east)))
  (:down
   (&rest __down)
   (if (keywordp (car __down))
       (send* _down __down)
     (progn
       (if __down (setq _down (car __down)))
       _down)))
  (:u
   (&rest __u)
   (if (keywordp (car __u))
       (send* _u __u)
     (progn
       (if __u (setq _u (car __u)))
       _u)))
  (:v
   (&rest __v)
   (if (keywordp (car __v))
       (send* _v __v)
     (progn
       (if __v (setq _v (car __v)))
       _v)))
  (:w
   (&rest __w)
   (if (keywordp (car __w))
       (send* _w __w)
     (progn
       (if __w (setq _w (car __w)))
       _w)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32 _north
    (send _north :serialization-length)
    ;; std_msgs/Float32 _east
    (send _east :serialization-length)
    ;; std_msgs/Float32 _down
    (send _down :serialization-length)
    ;; std_msgs/Float32 _u
    (send _u :serialization-length)
    ;; std_msgs/Float32 _v
    (send _v :serialization-length)
    ;; std_msgs/Float32 _w
    (send _w :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32 _north
       (send _north :serialize s)
     ;; std_msgs/Float32 _east
       (send _east :serialize s)
     ;; std_msgs/Float32 _down
       (send _down :serialize s)
     ;; std_msgs/Float32 _u
       (send _u :serialize s)
     ;; std_msgs/Float32 _v
       (send _v :serialize s)
     ;; std_msgs/Float32 _w
       (send _w :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32 _north
     (send _north :deserialize buf ptr-) (incf ptr- (send _north :serialization-length))
   ;; std_msgs/Float32 _east
     (send _east :deserialize buf ptr-) (incf ptr- (send _east :serialization-length))
   ;; std_msgs/Float32 _down
     (send _down :deserialize buf ptr-) (incf ptr- (send _down :serialization-length))
   ;; std_msgs/Float32 _u
     (send _u :deserialize buf ptr-) (incf ptr- (send _u :serialization-length))
   ;; std_msgs/Float32 _v
     (send _v :deserialize buf ptr-) (incf ptr- (send _v :serialization-length))
   ;; std_msgs/Float32 _w
     (send _w :deserialize buf ptr-) (incf ptr- (send _w :serialization-length))
   ;;
   self)
  )

(setf (get minerva2_iface::Navipac :md5sum-) "526c3ab86598af434d315ff08e79faeb")
(setf (get minerva2_iface::Navipac :datatype-) "minerva2_iface/Navipac")
(setf (get minerva2_iface::Navipac :definition-)
      "Header header
std_msgs/Float32 north
std_msgs/Float32 east
std_msgs/Float32 down
std_msgs/Float32 u
std_msgs/Float32 v
std_msgs/Float32 w 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :minerva2_iface/Navipac "526c3ab86598af434d315ff08e79faeb")


