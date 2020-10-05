;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::TrexOperation)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'TrexOperation (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::TREXOPERATION")
  (make-package "IMC_ROS_MSGS::TREXOPERATION"))

(in-package "ROS")
;;//! \htmlinclude TrexOperation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::TrexOperation
  :super ros::object
  :slots (_header _op _goal_id _token ))

(defmethod imc_ros_msgs::TrexOperation
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:op __op) (instance std_msgs::UInt8 :init))
    ((:goal_id __goal_id) (instance std_msgs::String :init))
    ((:token __token) (instance imc_ros_msgs::TrexToken :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _op __op)
   (setq _goal_id __goal_id)
   (setq _token __token)
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
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:token
   (&rest __token)
   (if (keywordp (car __token))
       (send* _token __token)
     (progn
       (if __token (setq _token (car __token)))
       _token)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _op
    (send _op :serialization-length)
    ;; std_msgs/String _goal_id
    (send _goal_id :serialization-length)
    ;; imc_ros_msgs/TrexToken _token
    (send _token :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _op
       (send _op :serialize s)
     ;; std_msgs/String _goal_id
       (send _goal_id :serialize s)
     ;; imc_ros_msgs/TrexToken _token
       (send _token :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _op
     (send _op :deserialize buf ptr-) (incf ptr- (send _op :serialization-length))
   ;; std_msgs/String _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; imc_ros_msgs/TrexToken _token
     (send _token :deserialize buf ptr-) (incf ptr- (send _token :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::TrexOperation :md5sum-) "24bad02d3c88803cb1d34a5fa7e51b9a")
(setf (get imc_ros_msgs::TrexOperation :datatype-) "imc_ros_msgs/TrexOperation")
(setf (get imc_ros_msgs::TrexOperation :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt8 op #see IMC.xml
std_msgs/String goal_id
imc_ros_msgs/TrexToken token


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
MSG: imc_ros_msgs/TrexToken
imc_ros_msgs/Header header
std_msgs/String timeline
std_msgs/String predicate
imc_ros_msgs/TrexAttribute attributes

================================================================================
MSG: imc_ros_msgs/TrexAttribute
imc_ros_msgs/Header header
std_msgs/String name

")



(provide :imc_ros_msgs/TrexOperation "24bad02d3c88803cb1d34a5fa7e51b9a")


