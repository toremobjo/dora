;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::OperationalLimits)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'OperationalLimits (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::OPERATIONALLIMITS")
  (make-package "IMC_ROS_MSGS::OPERATIONALLIMITS"))

(in-package "ROS")
;;//! \htmlinclude OperationalLimits.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::OperationalLimits
  :super ros::object
  :slots (_header _mask _max_depth _min_altitude _max_altitude _min_speed _max_speed _max_vrate _lat _lon _orientation _width _length ))

(defmethod imc_ros_msgs::OperationalLimits
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:mask __mask) (instance std_msgs::UInt8 :init))
    ((:max_depth __max_depth) (instance std_msgs::Float32 :init))
    ((:min_altitude __min_altitude) (instance std_msgs::Float32 :init))
    ((:max_altitude __max_altitude) (instance std_msgs::Float32 :init))
    ((:min_speed __min_speed) (instance std_msgs::Float32 :init))
    ((:max_speed __max_speed) (instance std_msgs::Float32 :init))
    ((:max_vrate __max_vrate) (instance std_msgs::Float32 :init))
    ((:lat __lat) (instance std_msgs::Float64 :init))
    ((:lon __lon) (instance std_msgs::Float64 :init))
    ((:orientation __orientation) (instance std_msgs::Float32 :init))
    ((:width __width) (instance std_msgs::Float32 :init))
    ((:length __length) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mask __mask)
   (setq _max_depth __max_depth)
   (setq _min_altitude __min_altitude)
   (setq _max_altitude __max_altitude)
   (setq _min_speed __min_speed)
   (setq _max_speed __max_speed)
   (setq _max_vrate __max_vrate)
   (setq _lat __lat)
   (setq _lon __lon)
   (setq _orientation __orientation)
   (setq _width __width)
   (setq _length __length)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mask
   (&rest __mask)
   (if (keywordp (car __mask))
       (send* _mask __mask)
     (progn
       (if __mask (setq _mask (car __mask)))
       _mask)))
  (:max_depth
   (&rest __max_depth)
   (if (keywordp (car __max_depth))
       (send* _max_depth __max_depth)
     (progn
       (if __max_depth (setq _max_depth (car __max_depth)))
       _max_depth)))
  (:min_altitude
   (&rest __min_altitude)
   (if (keywordp (car __min_altitude))
       (send* _min_altitude __min_altitude)
     (progn
       (if __min_altitude (setq _min_altitude (car __min_altitude)))
       _min_altitude)))
  (:max_altitude
   (&rest __max_altitude)
   (if (keywordp (car __max_altitude))
       (send* _max_altitude __max_altitude)
     (progn
       (if __max_altitude (setq _max_altitude (car __max_altitude)))
       _max_altitude)))
  (:min_speed
   (&rest __min_speed)
   (if (keywordp (car __min_speed))
       (send* _min_speed __min_speed)
     (progn
       (if __min_speed (setq _min_speed (car __min_speed)))
       _min_speed)))
  (:max_speed
   (&rest __max_speed)
   (if (keywordp (car __max_speed))
       (send* _max_speed __max_speed)
     (progn
       (if __max_speed (setq _max_speed (car __max_speed)))
       _max_speed)))
  (:max_vrate
   (&rest __max_vrate)
   (if (keywordp (car __max_vrate))
       (send* _max_vrate __max_vrate)
     (progn
       (if __max_vrate (setq _max_vrate (car __max_vrate)))
       _max_vrate)))
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
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:width
   (&rest __width)
   (if (keywordp (car __width))
       (send* _width __width)
     (progn
       (if __width (setq _width (car __width)))
       _width)))
  (:length
   (&rest __length)
   (if (keywordp (car __length))
       (send* _length __length)
     (progn
       (if __length (setq _length (car __length)))
       _length)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _mask
    (send _mask :serialization-length)
    ;; std_msgs/Float32 _max_depth
    (send _max_depth :serialization-length)
    ;; std_msgs/Float32 _min_altitude
    (send _min_altitude :serialization-length)
    ;; std_msgs/Float32 _max_altitude
    (send _max_altitude :serialization-length)
    ;; std_msgs/Float32 _min_speed
    (send _min_speed :serialization-length)
    ;; std_msgs/Float32 _max_speed
    (send _max_speed :serialization-length)
    ;; std_msgs/Float32 _max_vrate
    (send _max_vrate :serialization-length)
    ;; std_msgs/Float64 _lat
    (send _lat :serialization-length)
    ;; std_msgs/Float64 _lon
    (send _lon :serialization-length)
    ;; std_msgs/Float32 _orientation
    (send _orientation :serialization-length)
    ;; std_msgs/Float32 _width
    (send _width :serialization-length)
    ;; std_msgs/Float32 _length
    (send _length :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _mask
       (send _mask :serialize s)
     ;; std_msgs/Float32 _max_depth
       (send _max_depth :serialize s)
     ;; std_msgs/Float32 _min_altitude
       (send _min_altitude :serialize s)
     ;; std_msgs/Float32 _max_altitude
       (send _max_altitude :serialize s)
     ;; std_msgs/Float32 _min_speed
       (send _min_speed :serialize s)
     ;; std_msgs/Float32 _max_speed
       (send _max_speed :serialize s)
     ;; std_msgs/Float32 _max_vrate
       (send _max_vrate :serialize s)
     ;; std_msgs/Float64 _lat
       (send _lat :serialize s)
     ;; std_msgs/Float64 _lon
       (send _lon :serialize s)
     ;; std_msgs/Float32 _orientation
       (send _orientation :serialize s)
     ;; std_msgs/Float32 _width
       (send _width :serialize s)
     ;; std_msgs/Float32 _length
       (send _length :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _mask
     (send _mask :deserialize buf ptr-) (incf ptr- (send _mask :serialization-length))
   ;; std_msgs/Float32 _max_depth
     (send _max_depth :deserialize buf ptr-) (incf ptr- (send _max_depth :serialization-length))
   ;; std_msgs/Float32 _min_altitude
     (send _min_altitude :deserialize buf ptr-) (incf ptr- (send _min_altitude :serialization-length))
   ;; std_msgs/Float32 _max_altitude
     (send _max_altitude :deserialize buf ptr-) (incf ptr- (send _max_altitude :serialization-length))
   ;; std_msgs/Float32 _min_speed
     (send _min_speed :deserialize buf ptr-) (incf ptr- (send _min_speed :serialization-length))
   ;; std_msgs/Float32 _max_speed
     (send _max_speed :deserialize buf ptr-) (incf ptr- (send _max_speed :serialization-length))
   ;; std_msgs/Float32 _max_vrate
     (send _max_vrate :deserialize buf ptr-) (incf ptr- (send _max_vrate :serialization-length))
   ;; std_msgs/Float64 _lat
     (send _lat :deserialize buf ptr-) (incf ptr- (send _lat :serialization-length))
   ;; std_msgs/Float64 _lon
     (send _lon :deserialize buf ptr-) (incf ptr- (send _lon :serialization-length))
   ;; std_msgs/Float32 _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; std_msgs/Float32 _width
     (send _width :deserialize buf ptr-) (incf ptr- (send _width :serialization-length))
   ;; std_msgs/Float32 _length
     (send _length :deserialize buf ptr-) (incf ptr- (send _length :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::OperationalLimits :md5sum-) "9f341e7d12deb64a4dcdcdf13b3769d9")
(setf (get imc_ros_msgs::OperationalLimits :datatype-) "imc_ros_msgs/OperationalLimits")
(setf (get imc_ros_msgs::OperationalLimits :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt8 mask #See IMC.xml
std_msgs/Float32 max_depth
std_msgs/Float32 min_altitude
std_msgs/Float32 max_altitude
std_msgs/Float32 min_speed
std_msgs/Float32 max_speed
std_msgs/Float32 max_vrate
std_msgs/Float64 lat
std_msgs/Float64 lon
std_msgs/Float32 orientation
std_msgs/Float32 width
std_msgs/Float32 length

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



(provide :imc_ros_msgs/OperationalLimits "9f341e7d12deb64a4dcdcdf13b3769d9")


