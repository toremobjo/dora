;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::EntityActivationState)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'EntityActivationState (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::ENTITYACTIVATIONSTATE")
  (make-package "IMC_ROS_MSGS::ENTITYACTIVATIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude EntityActivationState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::EntityActivationState
  :super ros::object
  :slots (_header _state _error ))

(defmethod imc_ros_msgs::EntityActivationState
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:state __state) (instance std_msgs::UInt8 :init))
    ((:error __error) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   (setq _error __error)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:error
   (&rest __error)
   (if (keywordp (car __error))
       (send* _error __error)
     (progn
       (if __error (setq _error (car __error)))
       _error)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _state
    (send _state :serialization-length)
    ;; std_msgs/String _error
    (send _error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _state
       (send _state :serialize s)
     ;; std_msgs/String _error
       (send _error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; std_msgs/String _error
     (send _error :deserialize buf ptr-) (incf ptr- (send _error :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::EntityActivationState :md5sum-) "9b301214036f79911ba95aceeceb0c43")
(setf (get imc_ros_msgs::EntityActivationState :datatype-) "imc_ros_msgs/EntityActivationState")
(setf (get imc_ros_msgs::EntityActivationState :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt8 state
std_msgs/String error

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



(provide :imc_ros_msgs/EntityActivationState "9b301214036f79911ba95aceeceb0c43")


