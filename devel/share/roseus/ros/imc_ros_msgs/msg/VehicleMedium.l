;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::VehicleMedium)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'VehicleMedium (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::VEHICLEMEDIUM")
  (make-package "IMC_ROS_MSGS::VEHICLEMEDIUM"))

(in-package "ROS")
;;//! \htmlinclude VehicleMedium.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::VehicleMedium
  :super ros::object
  :slots (_header _medium ))

(defmethod imc_ros_msgs::VehicleMedium
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:medium __medium) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _medium __medium)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:medium
   (&rest __medium)
   (if (keywordp (car __medium))
       (send* _medium __medium)
     (progn
       (if __medium (setq _medium (car __medium)))
       _medium)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _medium
    (send _medium :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _medium
       (send _medium :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _medium
     (send _medium :deserialize buf ptr-) (incf ptr- (send _medium :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::VehicleMedium :md5sum-) "47ca94d311680139b7e2894a4794a001")
(setf (get imc_ros_msgs::VehicleMedium :datatype-) "imc_ros_msgs/VehicleMedium")
(setf (get imc_ros_msgs::VehicleMedium :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt8 medium

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



(provide :imc_ros_msgs/VehicleMedium "47ca94d311680139b7e2894a4794a001")


