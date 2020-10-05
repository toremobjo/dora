;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::Reference)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'Reference (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::REFERENCE")
  (make-package "IMC_ROS_MSGS::REFERENCE"))

(in-package "ROS")
;;//! \htmlinclude Reference.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::Reference
  :super ros::object
  :slots (_header _flags _speed _z _lat _lon _radius ))

(defmethod imc_ros_msgs::Reference
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:flags __flags) (instance std_msgs::UInt8 :init))
    ((:speed __speed) (instance imc_ros_msgs::DesiredSpeed :init))
    ((:z __z) (instance imc_ros_msgs::DesiredZ :init))
    ((:lat __lat) (instance std_msgs::Float64 :init))
    ((:lon __lon) (instance std_msgs::Float64 :init))
    ((:radius __radius) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _flags __flags)
   (setq _speed __speed)
   (setq _z __z)
   (setq _lat __lat)
   (setq _lon __lon)
   (setq _radius __radius)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:flags
   (&rest __flags)
   (if (keywordp (car __flags))
       (send* _flags __flags)
     (progn
       (if __flags (setq _flags (car __flags)))
       _flags)))
  (:speed
   (&rest __speed)
   (if (keywordp (car __speed))
       (send* _speed __speed)
     (progn
       (if __speed (setq _speed (car __speed)))
       _speed)))
  (:z
   (&rest __z)
   (if (keywordp (car __z))
       (send* _z __z)
     (progn
       (if __z (setq _z (car __z)))
       _z)))
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
  (:radius
   (&rest __radius)
   (if (keywordp (car __radius))
       (send* _radius __radius)
     (progn
       (if __radius (setq _radius (car __radius)))
       _radius)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _flags
    (send _flags :serialization-length)
    ;; imc_ros_msgs/DesiredSpeed _speed
    (send _speed :serialization-length)
    ;; imc_ros_msgs/DesiredZ _z
    (send _z :serialization-length)
    ;; std_msgs/Float64 _lat
    (send _lat :serialization-length)
    ;; std_msgs/Float64 _lon
    (send _lon :serialization-length)
    ;; std_msgs/Float32 _radius
    (send _radius :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _flags
       (send _flags :serialize s)
     ;; imc_ros_msgs/DesiredSpeed _speed
       (send _speed :serialize s)
     ;; imc_ros_msgs/DesiredZ _z
       (send _z :serialize s)
     ;; std_msgs/Float64 _lat
       (send _lat :serialize s)
     ;; std_msgs/Float64 _lon
       (send _lon :serialize s)
     ;; std_msgs/Float32 _radius
       (send _radius :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _flags
     (send _flags :deserialize buf ptr-) (incf ptr- (send _flags :serialization-length))
   ;; imc_ros_msgs/DesiredSpeed _speed
     (send _speed :deserialize buf ptr-) (incf ptr- (send _speed :serialization-length))
   ;; imc_ros_msgs/DesiredZ _z
     (send _z :deserialize buf ptr-) (incf ptr- (send _z :serialization-length))
   ;; std_msgs/Float64 _lat
     (send _lat :deserialize buf ptr-) (incf ptr- (send _lat :serialization-length))
   ;; std_msgs/Float64 _lon
     (send _lon :deserialize buf ptr-) (incf ptr- (send _lon :serialization-length))
   ;; std_msgs/Float32 _radius
     (send _radius :deserialize buf ptr-) (incf ptr- (send _radius :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::Reference :md5sum-) "3fd9aae03cf719e4a18ef0ec94ff4aca")
(setf (get imc_ros_msgs::Reference :datatype-) "imc_ros_msgs/Reference")
(setf (get imc_ros_msgs::Reference :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt8 flags 
#      //! Use Location Reference.
#      FLAG_LOCATION = 0x01,
#      //! Use Speed Reference.
#      FLAG_SPEED = 0x02,
#      //! Use Z Reference.
#      FLAG_Z = 0x04,
#      //! Use Radius Reference.
#      FLAG_RADIUS = 0x08,
#      //! Use this Reference as Start Position for PathControler.
#      FLAG_START_POINT = 0x10,
#      //! Use Current Position as Start Position for PathControler.
#      FLAG_DIRECT = 0x20,
#      //! Flag Maneuver Completion.
#      FLAG_MANDONE = 0x80
imc_ros_msgs/DesiredSpeed speed
imc_ros_msgs/DesiredZ z
std_msgs/Float64 lat 
std_msgs/Float64 lon
std_msgs/Float32 radius

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
MSG: imc_ros_msgs/DesiredSpeed
imc_ros_msgs/Header header
std_msgs/Float64 value
std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml

================================================================================
MSG: imc_ros_msgs/DesiredZ
imc_ros_msgs/Header header
std_msgs/Float32 value #unit [m]
std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :imc_ros_msgs/Reference "3fd9aae03cf719e4a18ef0ec94ff4aca")


