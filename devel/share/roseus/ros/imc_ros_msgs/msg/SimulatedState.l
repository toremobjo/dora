;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::SimulatedState)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'SimulatedState (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::SIMULATEDSTATE")
  (make-package "IMC_ROS_MSGS::SIMULATEDSTATE"))

(in-package "ROS")
;;//! \htmlinclude SimulatedState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::SimulatedState
  :super ros::object
  :slots (_header _lat _lon _height _x _y _z _phi _theta _psi _u _v _w _p _q _r _svx _svy _svz ))

(defmethod imc_ros_msgs::SimulatedState
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:lat __lat) (instance std_msgs::Float64 :init))
    ((:lon __lon) (instance std_msgs::Float64 :init))
    ((:height __height) (instance std_msgs::Float32 :init))
    ((:x __x) (instance std_msgs::Float32 :init))
    ((:y __y) (instance std_msgs::Float32 :init))
    ((:z __z) (instance std_msgs::Float32 :init))
    ((:phi __phi) (instance std_msgs::Float32 :init))
    ((:theta __theta) (instance std_msgs::Float32 :init))
    ((:psi __psi) (instance std_msgs::Float32 :init))
    ((:u __u) (instance std_msgs::Float32 :init))
    ((:v __v) (instance std_msgs::Float32 :init))
    ((:w __w) (instance std_msgs::Float32 :init))
    ((:p __p) (instance std_msgs::Float32 :init))
    ((:q __q) (instance std_msgs::Float32 :init))
    ((:r __r) (instance std_msgs::Float32 :init))
    ((:svx __svx) (instance std_msgs::Float32 :init))
    ((:svy __svy) (instance std_msgs::Float32 :init))
    ((:svz __svz) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lat __lat)
   (setq _lon __lon)
   (setq _height __height)
   (setq _x __x)
   (setq _y __y)
   (setq _z __z)
   (setq _phi __phi)
   (setq _theta __theta)
   (setq _psi __psi)
   (setq _u __u)
   (setq _v __v)
   (setq _w __w)
   (setq _p __p)
   (setq _q __q)
   (setq _r __r)
   (setq _svx __svx)
   (setq _svy __svy)
   (setq _svz __svz)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lat
   (&rest __lat)
   (if (keywordp (car __lat))
       (send* _lat __lat)
     (progn
       (if __lat (setq _lat (car __lat)))
       _lat)))
  (:lon
   (&rest __lon)
   (if (keywordp (car __lon))
       (send* _lon __lon)
     (progn
       (if __lon (setq _lon (car __lon)))
       _lon)))
  (:height
   (&rest __height)
   (if (keywordp (car __height))
       (send* _height __height)
     (progn
       (if __height (setq _height (car __height)))
       _height)))
  (:x
   (&rest __x)
   (if (keywordp (car __x))
       (send* _x __x)
     (progn
       (if __x (setq _x (car __x)))
       _x)))
  (:y
   (&rest __y)
   (if (keywordp (car __y))
       (send* _y __y)
     (progn
       (if __y (setq _y (car __y)))
       _y)))
  (:z
   (&rest __z)
   (if (keywordp (car __z))
       (send* _z __z)
     (progn
       (if __z (setq _z (car __z)))
       _z)))
  (:phi
   (&rest __phi)
   (if (keywordp (car __phi))
       (send* _phi __phi)
     (progn
       (if __phi (setq _phi (car __phi)))
       _phi)))
  (:theta
   (&rest __theta)
   (if (keywordp (car __theta))
       (send* _theta __theta)
     (progn
       (if __theta (setq _theta (car __theta)))
       _theta)))
  (:psi
   (&rest __psi)
   (if (keywordp (car __psi))
       (send* _psi __psi)
     (progn
       (if __psi (setq _psi (car __psi)))
       _psi)))
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
  (:p
   (&rest __p)
   (if (keywordp (car __p))
       (send* _p __p)
     (progn
       (if __p (setq _p (car __p)))
       _p)))
  (:q
   (&rest __q)
   (if (keywordp (car __q))
       (send* _q __q)
     (progn
       (if __q (setq _q (car __q)))
       _q)))
  (:r
   (&rest __r)
   (if (keywordp (car __r))
       (send* _r __r)
     (progn
       (if __r (setq _r (car __r)))
       _r)))
  (:svx
   (&rest __svx)
   (if (keywordp (car __svx))
       (send* _svx __svx)
     (progn
       (if __svx (setq _svx (car __svx)))
       _svx)))
  (:svy
   (&rest __svy)
   (if (keywordp (car __svy))
       (send* _svy __svy)
     (progn
       (if __svy (setq _svy (car __svy)))
       _svy)))
  (:svz
   (&rest __svz)
   (if (keywordp (car __svz))
       (send* _svz __svz)
     (progn
       (if __svz (setq _svz (car __svz)))
       _svz)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64 _lat
    (send _lat :serialization-length)
    ;; std_msgs/Float64 _lon
    (send _lon :serialization-length)
    ;; std_msgs/Float32 _height
    (send _height :serialization-length)
    ;; std_msgs/Float32 _x
    (send _x :serialization-length)
    ;; std_msgs/Float32 _y
    (send _y :serialization-length)
    ;; std_msgs/Float32 _z
    (send _z :serialization-length)
    ;; std_msgs/Float32 _phi
    (send _phi :serialization-length)
    ;; std_msgs/Float32 _theta
    (send _theta :serialization-length)
    ;; std_msgs/Float32 _psi
    (send _psi :serialization-length)
    ;; std_msgs/Float32 _u
    (send _u :serialization-length)
    ;; std_msgs/Float32 _v
    (send _v :serialization-length)
    ;; std_msgs/Float32 _w
    (send _w :serialization-length)
    ;; std_msgs/Float32 _p
    (send _p :serialization-length)
    ;; std_msgs/Float32 _q
    (send _q :serialization-length)
    ;; std_msgs/Float32 _r
    (send _r :serialization-length)
    ;; std_msgs/Float32 _svx
    (send _svx :serialization-length)
    ;; std_msgs/Float32 _svy
    (send _svy :serialization-length)
    ;; std_msgs/Float32 _svz
    (send _svz :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64 _lat
       (send _lat :serialize s)
     ;; std_msgs/Float64 _lon
       (send _lon :serialize s)
     ;; std_msgs/Float32 _height
       (send _height :serialize s)
     ;; std_msgs/Float32 _x
       (send _x :serialize s)
     ;; std_msgs/Float32 _y
       (send _y :serialize s)
     ;; std_msgs/Float32 _z
       (send _z :serialize s)
     ;; std_msgs/Float32 _phi
       (send _phi :serialize s)
     ;; std_msgs/Float32 _theta
       (send _theta :serialize s)
     ;; std_msgs/Float32 _psi
       (send _psi :serialize s)
     ;; std_msgs/Float32 _u
       (send _u :serialize s)
     ;; std_msgs/Float32 _v
       (send _v :serialize s)
     ;; std_msgs/Float32 _w
       (send _w :serialize s)
     ;; std_msgs/Float32 _p
       (send _p :serialize s)
     ;; std_msgs/Float32 _q
       (send _q :serialize s)
     ;; std_msgs/Float32 _r
       (send _r :serialize s)
     ;; std_msgs/Float32 _svx
       (send _svx :serialize s)
     ;; std_msgs/Float32 _svy
       (send _svy :serialize s)
     ;; std_msgs/Float32 _svz
       (send _svz :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64 _lat
     (send _lat :deserialize buf ptr-) (incf ptr- (send _lat :serialization-length))
   ;; std_msgs/Float64 _lon
     (send _lon :deserialize buf ptr-) (incf ptr- (send _lon :serialization-length))
   ;; std_msgs/Float32 _height
     (send _height :deserialize buf ptr-) (incf ptr- (send _height :serialization-length))
   ;; std_msgs/Float32 _x
     (send _x :deserialize buf ptr-) (incf ptr- (send _x :serialization-length))
   ;; std_msgs/Float32 _y
     (send _y :deserialize buf ptr-) (incf ptr- (send _y :serialization-length))
   ;; std_msgs/Float32 _z
     (send _z :deserialize buf ptr-) (incf ptr- (send _z :serialization-length))
   ;; std_msgs/Float32 _phi
     (send _phi :deserialize buf ptr-) (incf ptr- (send _phi :serialization-length))
   ;; std_msgs/Float32 _theta
     (send _theta :deserialize buf ptr-) (incf ptr- (send _theta :serialization-length))
   ;; std_msgs/Float32 _psi
     (send _psi :deserialize buf ptr-) (incf ptr- (send _psi :serialization-length))
   ;; std_msgs/Float32 _u
     (send _u :deserialize buf ptr-) (incf ptr- (send _u :serialization-length))
   ;; std_msgs/Float32 _v
     (send _v :deserialize buf ptr-) (incf ptr- (send _v :serialization-length))
   ;; std_msgs/Float32 _w
     (send _w :deserialize buf ptr-) (incf ptr- (send _w :serialization-length))
   ;; std_msgs/Float32 _p
     (send _p :deserialize buf ptr-) (incf ptr- (send _p :serialization-length))
   ;; std_msgs/Float32 _q
     (send _q :deserialize buf ptr-) (incf ptr- (send _q :serialization-length))
   ;; std_msgs/Float32 _r
     (send _r :deserialize buf ptr-) (incf ptr- (send _r :serialization-length))
   ;; std_msgs/Float32 _svx
     (send _svx :deserialize buf ptr-) (incf ptr- (send _svx :serialization-length))
   ;; std_msgs/Float32 _svy
     (send _svy :deserialize buf ptr-) (incf ptr- (send _svy :serialization-length))
   ;; std_msgs/Float32 _svz
     (send _svz :deserialize buf ptr-) (incf ptr- (send _svz :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::SimulatedState :md5sum-) "a9be16f13c86e9e2a7dc2db7679976ee")
(setf (get imc_ros_msgs::SimulatedState :datatype-) "imc_ros_msgs/SimulatedState")
(setf (get imc_ros_msgs::SimulatedState :definition-)
      "imc_ros_msgs/Header header
std_msgs/Float64 lat
std_msgs/Float64 lon
std_msgs/Float32 height
std_msgs/Float32 x
std_msgs/Float32 y
std_msgs/Float32 z
std_msgs/Float32 phi
std_msgs/Float32 theta
std_msgs/Float32 psi
std_msgs/Float32 u
std_msgs/Float32 v
std_msgs/Float32 w
std_msgs/Float32 p
std_msgs/Float32 q
std_msgs/Float32 r
std_msgs/Float32 svx
std_msgs/Float32 svy
std_msgs/Float32 svz

================================================================================
MSG: imc_ros_msgs/Header
std_msgs/Header rosheader
std_msgs/UInt16 sync
std_msgs/UInt16 mgid
std_msgs/UInt16 size
std_msgs/Float64 timestamp
std_msgs/UInt16 src
std_msgs/UInt8 src_ent
std_msgs/UInt16 dst
std_msgs/UInt8 dst_ent

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
MSG: std_msgs/UInt16
uint16 data

================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/UInt8
uint8 data

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :imc_ros_msgs/SimulatedState "a9be16f13c86e9e2a7dc2db7679976ee")


