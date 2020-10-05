;; Auto-generated. Do not edit!


(when (boundp 'minerva2_iface::Mtipro)
  (if (not (find-package "MINERVA2_IFACE"))
    (make-package "MINERVA2_IFACE"))
  (shadow 'Mtipro (find-package "MINERVA2_IFACE")))
(unless (find-package "MINERVA2_IFACE::MTIPRO")
  (make-package "MINERVA2_IFACE::MTIPRO"))

(in-package "ROS")
;;//! \htmlinclude Mtipro.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass minerva2_iface::Mtipro
  :super ros::object
  :slots (_header _roll _pitch _yaw ))

(defmethod minerva2_iface::Mtipro
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:roll __roll) (instance std_msgs::Float32 :init))
    ((:pitch __pitch) (instance std_msgs::Float32 :init))
    ((:yaw __yaw) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _roll __roll)
   (setq _pitch __pitch)
   (setq _yaw __yaw)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:roll
   (&rest __roll)
   (if (keywordp (car __roll))
       (send* _roll __roll)
     (progn
       (if __roll (setq _roll (car __roll)))
       _roll)))
  (:pitch
   (&rest __pitch)
   (if (keywordp (car __pitch))
       (send* _pitch __pitch)
     (progn
       (if __pitch (setq _pitch (car __pitch)))
       _pitch)))
  (:yaw
   (&rest __yaw)
   (if (keywordp (car __yaw))
       (send* _yaw __yaw)
     (progn
       (if __yaw (setq _yaw (car __yaw)))
       _yaw)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32 _roll
    (send _roll :serialization-length)
    ;; std_msgs/Float32 _pitch
    (send _pitch :serialization-length)
    ;; std_msgs/Float32 _yaw
    (send _yaw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32 _roll
       (send _roll :serialize s)
     ;; std_msgs/Float32 _pitch
       (send _pitch :serialize s)
     ;; std_msgs/Float32 _yaw
       (send _yaw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32 _roll
     (send _roll :deserialize buf ptr-) (incf ptr- (send _roll :serialization-length))
   ;; std_msgs/Float32 _pitch
     (send _pitch :deserialize buf ptr-) (incf ptr- (send _pitch :serialization-length))
   ;; std_msgs/Float32 _yaw
     (send _yaw :deserialize buf ptr-) (incf ptr- (send _yaw :serialization-length))
   ;;
   self)
  )

(setf (get minerva2_iface::Mtipro :md5sum-) "ecf5f4cc2cc1e3431a655ba24a6201ff")
(setf (get minerva2_iface::Mtipro :datatype-) "minerva2_iface/Mtipro")
(setf (get minerva2_iface::Mtipro :definition-)
      "Header header
std_msgs/Float32 roll
std_msgs/Float32 pitch
std_msgs/Float32 yaw

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
MSG: std_msgs/Float32
float32 data
")



(provide :minerva2_iface/Mtipro "ecf5f4cc2cc1e3431a655ba24a6201ff")


