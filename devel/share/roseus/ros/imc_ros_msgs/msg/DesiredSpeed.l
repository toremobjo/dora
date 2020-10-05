;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::DesiredSpeed)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'DesiredSpeed (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::DESIREDSPEED")
  (make-package "IMC_ROS_MSGS::DESIREDSPEED"))

(in-package "ROS")
;;//! \htmlinclude DesiredSpeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::DesiredSpeed
  :super ros::object
  :slots (_header _value _speed_units ))

(defmethod imc_ros_msgs::DesiredSpeed
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:value __value) (instance std_msgs::Float64 :init))
    ((:speed_units __speed_units) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _value __value)
   (setq _speed_units __speed_units)
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
  (:speed_units
   (&rest __speed_units)
   (if (keywordp (car __speed_units))
       (send* _speed_units __speed_units)
     (progn
       (if __speed_units (setq _speed_units (car __speed_units)))
       _speed_units)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64 _value
    (send _value :serialization-length)
    ;; std_msgs/UInt8 _speed_units
    (send _speed_units :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64 _value
       (send _value :serialize s)
     ;; std_msgs/UInt8 _speed_units
       (send _speed_units :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64 _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;; std_msgs/UInt8 _speed_units
     (send _speed_units :deserialize buf ptr-) (incf ptr- (send _speed_units :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::DesiredSpeed :md5sum-) "46fbcc518ffa3d364ddea96de11c27a9")
(setf (get imc_ros_msgs::DesiredSpeed :datatype-) "imc_ros_msgs/DesiredSpeed")
(setf (get imc_ros_msgs::DesiredSpeed :definition-)
      "imc_ros_msgs/Header header
std_msgs/Float64 value
std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml

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

")



(provide :imc_ros_msgs/DesiredSpeed "46fbcc518ffa3d364ddea96de11c27a9")


