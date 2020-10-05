;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::TrexToken)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'TrexToken (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::TREXTOKEN")
  (make-package "IMC_ROS_MSGS::TREXTOKEN"))

(in-package "ROS")
;;//! \htmlinclude TrexToken.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::TrexToken
  :super ros::object
  :slots (_header _timeline _predicate _attributes ))

(defmethod imc_ros_msgs::TrexToken
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:timeline __timeline) (instance std_msgs::String :init))
    ((:predicate __predicate) (instance std_msgs::String :init))
    ((:attributes __attributes) (instance imc_ros_msgs::TrexAttribute :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _timeline __timeline)
   (setq _predicate __predicate)
   (setq _attributes __attributes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timeline
   (&rest __timeline)
   (if (keywordp (car __timeline))
       (send* _timeline __timeline)
     (progn
       (if __timeline (setq _timeline (car __timeline)))
       _timeline)))
  (:predicate
   (&rest __predicate)
   (if (keywordp (car __predicate))
       (send* _predicate __predicate)
     (progn
       (if __predicate (setq _predicate (car __predicate)))
       _predicate)))
  (:attributes
   (&rest __attributes)
   (if (keywordp (car __attributes))
       (send* _attributes __attributes)
     (progn
       (if __attributes (setq _attributes (car __attributes)))
       _attributes)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/String _timeline
    (send _timeline :serialization-length)
    ;; std_msgs/String _predicate
    (send _predicate :serialization-length)
    ;; imc_ros_msgs/TrexAttribute _attributes
    (send _attributes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/String _timeline
       (send _timeline :serialize s)
     ;; std_msgs/String _predicate
       (send _predicate :serialize s)
     ;; imc_ros_msgs/TrexAttribute _attributes
       (send _attributes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/String _timeline
     (send _timeline :deserialize buf ptr-) (incf ptr- (send _timeline :serialization-length))
   ;; std_msgs/String _predicate
     (send _predicate :deserialize buf ptr-) (incf ptr- (send _predicate :serialization-length))
   ;; imc_ros_msgs/TrexAttribute _attributes
     (send _attributes :deserialize buf ptr-) (incf ptr- (send _attributes :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::TrexToken :md5sum-) "ce094818c75572189a21e2577c1581bb")
(setf (get imc_ros_msgs::TrexToken :datatype-) "imc_ros_msgs/TrexToken")
(setf (get imc_ros_msgs::TrexToken :definition-)
      "imc_ros_msgs/Header header
std_msgs/String timeline
std_msgs/String predicate
imc_ros_msgs/TrexAttribute attributes

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

================================================================================
MSG: imc_ros_msgs/TrexAttribute
imc_ros_msgs/Header header
std_msgs/String name

")



(provide :imc_ros_msgs/TrexToken "ce094818c75572189a21e2577c1581bb")


