;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::TrexAttribute)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'TrexAttribute (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::TREXATTRIBUTE")
  (make-package "IMC_ROS_MSGS::TREXATTRIBUTE"))

(in-package "ROS")
;;//! \htmlinclude TrexAttribute.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::TrexAttribute
  :super ros::object
  :slots (_header _name ))

(defmethod imc_ros_msgs::TrexAttribute
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:name __name) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&rest __name)
   (if (keywordp (car __name))
       (send* _name __name)
     (progn
       (if __name (setq _name (car __name)))
       _name)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String _name
    (send _name :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String _name
       (send _name :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String _name
     (send _name :deserialize buf ptr-) (incf ptr- (send _name :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::TrexAttribute :md5sum-) "b584eac2651c02a3647ddc10e59c3d7b")
(setf (get imc_ros_msgs::TrexAttribute :datatype-) "imc_ros_msgs/TrexAttribute")
(setf (get imc_ros_msgs::TrexAttribute :definition-)
      "imc_ros_msgs/Header header
std_msgs/String name

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
MSG: std_msgs/String
string data

")



(provide :imc_ros_msgs/TrexAttribute "b584eac2651c02a3647ddc10e59c3d7b")


