;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::IridiumMsgTx)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'IridiumMsgTx (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::IRIDIUMMSGTX")
  (make-package "IMC_ROS_MSGS::IRIDIUMMSGTX"))

(in-package "ROS")
;;//! \htmlinclude IridiumMsgTx.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::IridiumMsgTx
  :super ros::object
  :slots (_header _req_id _ttl _data ))

(defmethod imc_ros_msgs::IridiumMsgTx
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:req_id __req_id) (instance std_msgs::UInt16 :init))
    ((:ttl __ttl) (instance std_msgs::UInt16 :init))
    ((:data __data) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _req_id __req_id)
   (setq _ttl __ttl)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:req_id
   (&rest __req_id)
   (if (keywordp (car __req_id))
       (send* _req_id __req_id)
     (progn
       (if __req_id (setq _req_id (car __req_id)))
       _req_id)))
  (:ttl
   (&rest __ttl)
   (if (keywordp (car __ttl))
       (send* _ttl __ttl)
     (progn
       (if __ttl (setq _ttl (car __ttl)))
       _ttl)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt16 _req_id
    (send _req_id :serialization-length)
    ;; std_msgs/UInt16 _ttl
    (send _ttl :serialization-length)
    ;; std_msgs/String _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt16 _req_id
       (send _req_id :serialize s)
     ;; std_msgs/UInt16 _ttl
       (send _ttl :serialize s)
     ;; std_msgs/String _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt16 _req_id
     (send _req_id :deserialize buf ptr-) (incf ptr- (send _req_id :serialization-length))
   ;; std_msgs/UInt16 _ttl
     (send _ttl :deserialize buf ptr-) (incf ptr- (send _ttl :serialization-length))
   ;; std_msgs/String _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::IridiumMsgTx :md5sum-) "031f05279239a43f0254b768544e3ffd")
(setf (get imc_ros_msgs::IridiumMsgTx :datatype-) "imc_ros_msgs/IridiumMsgTx")
(setf (get imc_ros_msgs::IridiumMsgTx :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt16 req_id
std_msgs/UInt16 ttl
std_msgs/String data

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



(provide :imc_ros_msgs/IridiumMsgTx "031f05279239a43f0254b768544e3ffd")


