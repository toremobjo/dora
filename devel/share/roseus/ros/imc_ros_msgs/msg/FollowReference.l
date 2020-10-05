;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::FollowReference)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'FollowReference (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::FOLLOWREFERENCE")
  (make-package "IMC_ROS_MSGS::FOLLOWREFERENCE"))

(in-package "ROS")
;;//! \htmlinclude FollowReference.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::FollowReference
  :super ros::object
  :slots (_header _control_src _control_ent _timeout _loiter_radius _altitude_interval ))

(defmethod imc_ros_msgs::FollowReference
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:control_src __control_src) (instance std_msgs::UInt16 :init))
    ((:control_ent __control_ent) (instance std_msgs::UInt8 :init))
    ((:timeout __timeout) (instance std_msgs::Float32 :init))
    ((:loiter_radius __loiter_radius) (instance std_msgs::Float32 :init))
    ((:altitude_interval __altitude_interval) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _control_src __control_src)
   (setq _control_ent __control_ent)
   (setq _timeout __timeout)
   (setq _loiter_radius __loiter_radius)
   (setq _altitude_interval __altitude_interval)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:control_src
   (&rest __control_src)
   (if (keywordp (car __control_src))
       (send* _control_src __control_src)
     (progn
       (if __control_src (setq _control_src (car __control_src)))
       _control_src)))
  (:control_ent
   (&rest __control_ent)
   (if (keywordp (car __control_ent))
       (send* _control_ent __control_ent)
     (progn
       (if __control_ent (setq _control_ent (car __control_ent)))
       _control_ent)))
  (:timeout
   (&rest __timeout)
   (if (keywordp (car __timeout))
       (send* _timeout __timeout)
     (progn
       (if __timeout (setq _timeout (car __timeout)))
       _timeout)))
  (:loiter_radius
   (&rest __loiter_radius)
   (if (keywordp (car __loiter_radius))
       (send* _loiter_radius __loiter_radius)
     (progn
       (if __loiter_radius (setq _loiter_radius (car __loiter_radius)))
       _loiter_radius)))
  (:altitude_interval
   (&rest __altitude_interval)
   (if (keywordp (car __altitude_interval))
       (send* _altitude_interval __altitude_interval)
     (progn
       (if __altitude_interval (setq _altitude_interval (car __altitude_interval)))
       _altitude_interval)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt16 _control_src
    (send _control_src :serialization-length)
    ;; std_msgs/UInt8 _control_ent
    (send _control_ent :serialization-length)
    ;; std_msgs/Float32 _timeout
    (send _timeout :serialization-length)
    ;; std_msgs/Float32 _loiter_radius
    (send _loiter_radius :serialization-length)
    ;; std_msgs/Float32 _altitude_interval
    (send _altitude_interval :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt16 _control_src
       (send _control_src :serialize s)
     ;; std_msgs/UInt8 _control_ent
       (send _control_ent :serialize s)
     ;; std_msgs/Float32 _timeout
       (send _timeout :serialize s)
     ;; std_msgs/Float32 _loiter_radius
       (send _loiter_radius :serialize s)
     ;; std_msgs/Float32 _altitude_interval
       (send _altitude_interval :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt16 _control_src
     (send _control_src :deserialize buf ptr-) (incf ptr- (send _control_src :serialization-length))
   ;; std_msgs/UInt8 _control_ent
     (send _control_ent :deserialize buf ptr-) (incf ptr- (send _control_ent :serialization-length))
   ;; std_msgs/Float32 _timeout
     (send _timeout :deserialize buf ptr-) (incf ptr- (send _timeout :serialization-length))
   ;; std_msgs/Float32 _loiter_radius
     (send _loiter_radius :deserialize buf ptr-) (incf ptr- (send _loiter_radius :serialization-length))
   ;; std_msgs/Float32 _altitude_interval
     (send _altitude_interval :deserialize buf ptr-) (incf ptr- (send _altitude_interval :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::FollowReference :md5sum-) "e2e2166f80c57b484155a0a8b3e650ca")
(setf (get imc_ros_msgs::FollowReference :datatype-) "imc_ros_msgs/FollowReference")
(setf (get imc_ros_msgs::FollowReference :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt16 control_src
std_msgs/UInt8 control_ent
std_msgs/Float32 timeout
std_msgs/Float32 loiter_radius
std_msgs/Float32 altitude_interval

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



(provide :imc_ros_msgs/FollowReference "e2e2166f80c57b484155a0a8b3e650ca")


