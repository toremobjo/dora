;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::DesiredZ)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'DesiredZ (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::DESIREDZ")
  (make-package "IMC_ROS_MSGS::DESIREDZ"))

(in-package "ROS")
;;//! \htmlinclude DesiredZ.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::DesiredZ
  :super ros::object
  :slots (_header _value _z_units ))

(defmethod imc_ros_msgs::DesiredZ
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:value __value) (instance std_msgs::Float32 :init))
    ((:z_units __z_units) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _value __value)
   (setq _z_units __z_units)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:z_units
   (&rest __z_units)
   (if (keywordp (car __z_units))
       (send* _z_units __z_units)
     (progn
       (if __z_units (setq _z_units (car __z_units)))
       _z_units)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32 _value
    (send _value :serialization-length)
    ;; std_msgs/UInt8 _z_units
    (send _z_units :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32 _value
       (send _value :serialize s)
     ;; std_msgs/UInt8 _z_units
       (send _z_units :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32 _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;; std_msgs/UInt8 _z_units
     (send _z_units :deserialize buf ptr-) (incf ptr- (send _z_units :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::DesiredZ :md5sum-) "8e50b0573a97372cb54fac52b5f32e48")
(setf (get imc_ros_msgs::DesiredZ :datatype-) "imc_ros_msgs/DesiredZ")
(setf (get imc_ros_msgs::DesiredZ :definition-)
      "imc_ros_msgs/Header header
std_msgs/Float32 value #unit [m]
std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height

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



(provide :imc_ros_msgs/DesiredZ "8e50b0573a97372cb54fac52b5f32e48")


