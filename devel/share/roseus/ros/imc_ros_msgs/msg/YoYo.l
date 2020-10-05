;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::YoYo)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'YoYo (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::YOYO")
  (make-package "IMC_ROS_MSGS::YOYO"))

(in-package "ROS")
;;//! \htmlinclude YoYo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::YoYo
  :super ros::object
  :slots (_header _timeout _lat _lon _z _z_units _amplitude _pitch _speed _speed_units _custom ))

(defmethod imc_ros_msgs::YoYo
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:timeout __timeout) (instance std_msgs::UInt16 :init))
    ((:lat __lat) (instance std_msgs::Float64 :init))
    ((:lon __lon) (instance std_msgs::Float64 :init))
    ((:z __z) (instance std_msgs::Float32 :init))
    ((:z_units __z_units) (instance std_msgs::UInt8 :init))
    ((:amplitude __amplitude) (instance std_msgs::Float32 :init))
    ((:pitch __pitch) (instance std_msgs::Float32 :init))
    ((:speed __speed) (instance std_msgs::Float32 :init))
    ((:speed_units __speed_units) (instance std_msgs::UInt8 :init))
    ((:custom __custom) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _timeout __timeout)
   (setq _lat __lat)
   (setq _lon __lon)
   (setq _z __z)
   (setq _z_units __z_units)
   (setq _amplitude __amplitude)
   (setq _pitch __pitch)
   (setq _speed __speed)
   (setq _speed_units __speed_units)
   (setq _custom __custom)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timeout
   (&rest __timeout)
   (if (keywordp (car __timeout))
       (send* _timeout __timeout)
     (progn
       (if __timeout (setq _timeout (car __timeout)))
       _timeout)))
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
  (:z
   (&rest __z)
   (if (keywordp (car __z))
       (send* _z __z)
     (progn
       (if __z (setq _z (car __z)))
       _z)))
  (:z_units
   (&rest __z_units)
   (if (keywordp (car __z_units))
       (send* _z_units __z_units)
     (progn
       (if __z_units (setq _z_units (car __z_units)))
       _z_units)))
  (:amplitude
   (&rest __amplitude)
   (if (keywordp (car __amplitude))
       (send* _amplitude __amplitude)
     (progn
       (if __amplitude (setq _amplitude (car __amplitude)))
       _amplitude)))
  (:pitch
   (&rest __pitch)
   (if (keywordp (car __pitch))
       (send* _pitch __pitch)
     (progn
       (if __pitch (setq _pitch (car __pitch)))
       _pitch)))
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:speed_units
   (&rest __speed_units)
   (if (keywordp (car __speed_units))
       (send* _speed_units __speed_units)
     (progn
       (if __speed_units (setq _speed_units (car __speed_units)))
       _speed_units)))
  (:custom
   (&rest __custom)
   (if (keywordp (car __custom))
       (send* _custom __custom)
     (progn
       (if __custom (setq _custom (car __custom)))
       _custom)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt16 _timeout
    (send _timeout :serialization-length)
    ;; std_msgs/Float64 _lat
    (send _lat :serialization-length)
    ;; std_msgs/Float64 _lon
    (send _lon :serialization-length)
    ;; std_msgs/Float32 _z
    (send _z :serialization-length)
    ;; std_msgs/UInt8 _z_units
    (send _z_units :serialization-length)
    ;; std_msgs/Float32 _amplitude
    (send _amplitude :serialization-length)
    ;; std_msgs/Float32 _pitch
    (send _pitch :serialization-length)
    ;; std_msgs/Float32 _speed
    (send _speed :serialization-length)
    ;; std_msgs/UInt8 _speed_units
    (send _speed_units :serialization-length)
    ;; std_msgs/String _custom
    (send _custom :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt16 _timeout
       (send _timeout :serialize s)
     ;; std_msgs/Float64 _lat
       (send _lat :serialize s)
     ;; std_msgs/Float64 _lon
       (send _lon :serialize s)
     ;; std_msgs/Float32 _z
       (send _z :serialize s)
     ;; std_msgs/UInt8 _z_units
       (send _z_units :serialize s)
     ;; std_msgs/Float32 _amplitude
       (send _amplitude :serialize s)
     ;; std_msgs/Float32 _pitch
       (send _pitch :serialize s)
     ;; std_msgs/Float32 _speed
       (send _speed :serialize s)
     ;; std_msgs/UInt8 _speed_units
       (send _speed_units :serialize s)
     ;; std_msgs/String _custom
       (send _custom :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt16 _timeout
     (send _timeout :deserialize buf ptr-) (incf ptr- (send _timeout :serialization-length))
   ;; std_msgs/Float64 _lat
     (send _lat :deserialize buf ptr-) (incf ptr- (send _lat :serialization-length))
   ;; std_msgs/Float64 _lon
     (send _lon :deserialize buf ptr-) (incf ptr- (send _lon :serialization-length))
   ;; std_msgs/Float32 _z
     (send _z :deserialize buf ptr-) (incf ptr- (send _z :serialization-length))
   ;; std_msgs/UInt8 _z_units
     (send _z_units :deserialize buf ptr-) (incf ptr- (send _z_units :serialization-length))
   ;; std_msgs/Float32 _amplitude
     (send _amplitude :deserialize buf ptr-) (incf ptr- (send _amplitude :serialization-length))
   ;; std_msgs/Float32 _pitch
     (send _pitch :deserialize buf ptr-) (incf ptr- (send _pitch :serialization-length))
   ;; std_msgs/Float32 _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; std_msgs/UInt8 _speed_units
     (send _speed_units :deserialize buf ptr-) (incf ptr- (send _speed_units :serialization-length))
   ;; std_msgs/String _custom
     (send _custom :deserialize buf ptr-) (incf ptr- (send _custom :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::YoYo :md5sum-) "3b672a88138792100b18e9e70f2f624f")
(setf (get imc_ros_msgs::YoYo :datatype-) "imc_ros_msgs/YoYo")
(setf (get imc_ros_msgs::YoYo :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt16 timeout
std_msgs/Float64 lat
std_msgs/Float64 lon
std_msgs/Float32 z
std_msgs/UInt8 z_units
std_msgs/Float32 amplitude
std_msgs/Float32 pitch
std_msgs/Float32 speed
std_msgs/UInt8 speed_units
std_msgs/String custom


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
================================================================================
MSG: std_msgs/String
string data

")



(provide :imc_ros_msgs/YoYo "3b672a88138792100b18e9e70f2f624f")


