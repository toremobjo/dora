;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::StopManeuver)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'StopManeuver (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::STOPMANEUVER")
  (make-package "IMC_ROS_MSGS::STOPMANEUVER"))

(in-package "ROS")
;;//! \htmlinclude StopManeuver.msg.html


(defclass imc_ros_msgs::StopManeuver
  :super ros::object
  :slots (_header ))

(defmethod imc_ros_msgs::StopManeuver
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::StopManeuver :md5sum-) "06fbfc9bc6f2d5db4ca6e41fe5aa5ae9")
(setf (get imc_ros_msgs::StopManeuver :datatype-) "imc_ros_msgs/StopManeuver")
(setf (get imc_ros_msgs::StopManeuver :definition-)
      "imc_ros_msgs/Header header

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



(provide :imc_ros_msgs/StopManeuver "06fbfc9bc6f2d5db4ca6e41fe5aa5ae9")


