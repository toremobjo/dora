;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::DissolvedOrganicMatter)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'DissolvedOrganicMatter (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::DISSOLVEDORGANICMATTER")
  (make-package "IMC_ROS_MSGS::DISSOLVEDORGANICMATTER"))

(in-package "ROS")
;;//! \htmlinclude DissolvedOrganicMatter.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::DissolvedOrganicMatter
  :super ros::object
  :slots (_header _value _type ))

(defmethod imc_ros_msgs::DissolvedOrganicMatter
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:value __value) (instance std_msgs::Float32 :init))
    ((:type __type) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _value __value)
   (setq _type __type)
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
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32 _value
    (send _value :serialization-length)
    ;; std_msgs/UInt8 _type
    (send _type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32 _value
       (send _value :serialize s)
     ;; std_msgs/UInt8 _type
       (send _type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32 _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;; std_msgs/UInt8 _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::DissolvedOrganicMatter :md5sum-) "b215d007e3a074d676c1e2103e2e81a4")
(setf (get imc_ros_msgs::DissolvedOrganicMatter :datatype-) "imc_ros_msgs/DissolvedOrganicMatter")
(setf (get imc_ros_msgs::DissolvedOrganicMatter :definition-)
      "imc_ros_msgs/Header header
std_msgs/Float32 value
std_msgs/UInt8 type #0=Colored, 1=Fluorecent

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



(provide :imc_ros_msgs/DissolvedOrganicMatter "b215d007e3a074d676c1e2103e2e81a4")


