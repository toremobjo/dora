;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::Header)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'Header (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::HEADER")
  (make-package "IMC_ROS_MSGS::HEADER"))

(in-package "ROS")
;;//! \htmlinclude Header.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::Header
  :super ros::object
  :slots (_rosheader _sync _mgid _size _timestamp _src _src_ent _dst _dst_ent ))

(defmethod imc_ros_msgs::Header
  (:init
   (&key
    ((:rosheader __rosheader) (instance std_msgs::Header :init))
    ((:sync __sync) (instance std_msgs::UInt16 :init))
    ((:mgid __mgid) (instance std_msgs::UInt16 :init))
    ((:size __size) (instance std_msgs::UInt16 :init))
    ((:timestamp __timestamp) (instance std_msgs::Float64 :init))
    ((:src __src) (instance std_msgs::UInt16 :init))
    ((:src_ent __src_ent) (instance std_msgs::UInt8 :init))
    ((:dst __dst) (instance std_msgs::UInt16 :init))
    ((:dst_ent __dst_ent) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _rosheader __rosheader)
   (setq _sync __sync)
   (setq _mgid __mgid)
   (setq _size __size)
   (setq _timestamp __timestamp)
   (setq _src __src)
   (setq _src_ent __src_ent)
   (setq _dst __dst)
   (setq _dst_ent __dst_ent)
   self)
  (:rosheader
   (&rest __rosheader)
   (if (keywordp (car __rosheader))
       (send* _rosheader __rosheader)
     (progn
       (if __rosheader (setq _rosheader (car __rosheader)))
       _rosheader)))
  (:sync
   (&rest __sync)
   (if (keywordp (car __sync))
       (send* _sync __sync)
     (progn
       (if __sync (setq _sync (car __sync)))
       _sync)))
  (:mgid
   (&rest __mgid)
   (if (keywordp (car __mgid))
       (send* _mgid __mgid)
     (progn
       (if __mgid (setq _mgid (car __mgid)))
       _mgid)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:timestamp
   (&rest __timestamp)
   (if (keywordp (car __timestamp))
       (send* _timestamp __timestamp)
     (progn
       (if __timestamp (setq _timestamp (car __timestamp)))
       _timestamp)))
  (:src
   (&rest __src)
   (if (keywordp (car __src))
       (send* _src __src)
     (progn
       (if __src (setq _src (car __src)))
       _src)))
  (:src_ent
   (&rest __src_ent)
   (if (keywordp (car __src_ent))
       (send* _src_ent __src_ent)
     (progn
       (if __src_ent (setq _src_ent (car __src_ent)))
       _src_ent)))
  (:dst
   (&rest __dst)
   (if (keywordp (car __dst))
       (send* _dst __dst)
     (progn
       (if __dst (setq _dst (car __dst)))
       _dst)))
  (:dst_ent
   (&rest __dst_ent)
   (if (keywordp (car __dst_ent))
       (send* _dst_ent __dst_ent)
     (progn
       (if __dst_ent (setq _dst_ent (car __dst_ent)))
       _dst_ent)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _rosheader
    (send _rosheader :serialization-length)
    ;; std_msgs/UInt16 _sync
    (send _sync :serialization-length)
    ;; std_msgs/UInt16 _mgid
    (send _mgid :serialization-length)
    ;; std_msgs/UInt16 _size
    (send _size :serialization-length)
    ;; std_msgs/Float64 _timestamp
    (send _timestamp :serialization-length)
    ;; std_msgs/UInt16 _src
    (send _src :serialization-length)
    ;; std_msgs/UInt8 _src_ent
    (send _src_ent :serialization-length)
    ;; std_msgs/UInt16 _dst
    (send _dst :serialization-length)
    ;; std_msgs/UInt8 _dst_ent
    (send _dst_ent :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _rosheader
       (send _rosheader :serialize s)
     ;; std_msgs/UInt16 _sync
       (send _sync :serialize s)
     ;; std_msgs/UInt16 _mgid
       (send _mgid :serialize s)
     ;; std_msgs/UInt16 _size
       (send _size :serialize s)
     ;; std_msgs/Float64 _timestamp
       (send _timestamp :serialize s)
     ;; std_msgs/UInt16 _src
       (send _src :serialize s)
     ;; std_msgs/UInt8 _src_ent
       (send _src_ent :serialize s)
     ;; std_msgs/UInt16 _dst
       (send _dst :serialize s)
     ;; std_msgs/UInt8 _dst_ent
       (send _dst_ent :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _rosheader
     (send _rosheader :deserialize buf ptr-) (incf ptr- (send _rosheader :serialization-length))
   ;; std_msgs/UInt16 _sync
     (send _sync :deserialize buf ptr-) (incf ptr- (send _sync :serialization-length))
   ;; std_msgs/UInt16 _mgid
     (send _mgid :deserialize buf ptr-) (incf ptr- (send _mgid :serialization-length))
   ;; std_msgs/UInt16 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; std_msgs/Float64 _timestamp
     (send _timestamp :deserialize buf ptr-) (incf ptr- (send _timestamp :serialization-length))
   ;; std_msgs/UInt16 _src
     (send _src :deserialize buf ptr-) (incf ptr- (send _src :serialization-length))
   ;; std_msgs/UInt8 _src_ent
     (send _src_ent :deserialize buf ptr-) (incf ptr- (send _src_ent :serialization-length))
   ;; std_msgs/UInt16 _dst
     (send _dst :deserialize buf ptr-) (incf ptr- (send _dst :serialization-length))
   ;; std_msgs/UInt8 _dst_ent
     (send _dst_ent :deserialize buf ptr-) (incf ptr- (send _dst_ent :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::Header :md5sum-) "f599b646bbd90db766bafb08706c85c7")
(setf (get imc_ros_msgs::Header :datatype-) "imc_ros_msgs/Header")
(setf (get imc_ros_msgs::Header :definition-)
      "std_msgs/Header rosheader
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



(provide :imc_ros_msgs/Header "f599b646bbd90db766bafb08706c85c7")


