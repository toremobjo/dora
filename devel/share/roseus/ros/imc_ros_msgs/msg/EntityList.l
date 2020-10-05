;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::EntityList)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'EntityList (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::ENTITYLIST")
  (make-package "IMC_ROS_MSGS::ENTITYLIST"))

(in-package "ROS")
;;//! \htmlinclude EntityList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::EntityList
  :super ros::object
  :slots (_header _op _list ))

(defmethod imc_ros_msgs::EntityList
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:op __op) (instance std_msgs::UInt8 :init))
    ((:list __list) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _op __op)
   (setq _list __list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:op
   (&rest __op)
   (if (keywordp (car __op))
       (send* _op __op)
     (progn
       (if __op (setq _op (car __op)))
       _op)))
  (:list
   (&rest __list)
   (if (keywordp (car __list))
       (send* _list __list)
     (progn
       (if __list (setq _list (car __list)))
       _list)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _op
    (send _op :serialization-length)
    ;; std_msgs/String _list
    (send _list :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _op
       (send _op :serialize s)
     ;; std_msgs/String _list
       (send _list :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _op
     (send _op :deserialize buf ptr-) (incf ptr- (send _op :serialization-length))
   ;; std_msgs/String _list
     (send _list :deserialize buf ptr-) (incf ptr- (send _list :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::EntityList :md5sum-) "87fa9b0ef1d26b4979b5dfd0dab6d64e")
(setf (get imc_ros_msgs::EntityList :datatype-) "imc_ros_msgs/EntityList")
(setf (get imc_ros_msgs::EntityList :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt8 op
std_msgs/String list

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



(provide :imc_ros_msgs/EntityList "87fa9b0ef1d26b4979b5dfd0dab6d64e")


