;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::FollowRefState)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'FollowRefState (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::FOLLOWREFSTATE")
  (make-package "IMC_ROS_MSGS::FOLLOWREFSTATE"))

(in-package "ROS")
;;//! \htmlinclude FollowRefState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::FollowRefState
  :super ros::object
  :slots (_header _control_ent _reference _state _plroximity ))

(defmethod imc_ros_msgs::FollowRefState
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:control_ent __control_ent) (instance std_msgs::UInt8 :init))
    ((:reference __reference) (instance imc_ros_msgs::Reference :init))
    ((:state __state) (instance std_msgs::UInt8 :init))
    ((:plroximity __plroximity) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _control_ent __control_ent)
   (setq _reference __reference)
   (setq _state __state)
   (setq _plroximity __plroximity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:control_ent
   (&rest __control_ent)
   (if (keywordp (car __control_ent))
       (send* _control_ent __control_ent)
     (progn
       (if __control_ent (setq _control_ent (car __control_ent)))
       _control_ent)))
  (:reference
   (&rest __reference)
   (if (keywordp (car __reference))
       (send* _reference __reference)
     (progn
       (if __reference (setq _reference (car __reference)))
       _reference)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:plroximity
   (&rest __plroximity)
   (if (keywordp (car __plroximity))
       (send* _plroximity __plroximity)
     (progn
       (if __plroximity (setq _plroximity (car __plroximity)))
       _plroximity)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _control_ent
    (send _control_ent :serialization-length)
    ;; imc_ros_msgs/Reference _reference
    (send _reference :serialization-length)
    ;; std_msgs/UInt8 _state
    (send _state :serialization-length)
    ;; std_msgs/UInt8 _plroximity
    (send _plroximity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _control_ent
       (send _control_ent :serialize s)
     ;; imc_ros_msgs/Reference _reference
       (send _reference :serialize s)
     ;; std_msgs/UInt8 _state
       (send _state :serialize s)
     ;; std_msgs/UInt8 _plroximity
       (send _plroximity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _control_ent
     (send _control_ent :deserialize buf ptr-) (incf ptr- (send _control_ent :serialization-length))
   ;; imc_ros_msgs/Reference _reference
     (send _reference :deserialize buf ptr-) (incf ptr- (send _reference :serialization-length))
   ;; std_msgs/UInt8 _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; std_msgs/UInt8 _plroximity
     (send _plroximity :deserialize buf ptr-) (incf ptr- (send _plroximity :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::FollowRefState :md5sum-) "726407b2cfb995059683aa882a05454a")
(setf (get imc_ros_msgs::FollowRefState :datatype-) "imc_ros_msgs/FollowRefState")
(setf (get imc_ros_msgs::FollowRefState :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt8 control_ent
imc_ros_msgs/Reference reference
std_msgs/UInt8 state             # 1=Wait 2=goto 3=loiter 4=hover 5=elevator 6=timeout
std_msgs/UInt8 plroximity # 0x01=FAR 0x02=XY_NEAR 0x03=Z_NEAR 0x04=XY_UNREACHABLE 0x05=	Z_UNREACHABLE

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
MSG: imc_ros_msgs/Reference
imc_ros_msgs/Header header
std_msgs/UInt8 flags 
#      //! Use Location Reference.
#      FLAG_LOCATION = 0x01,
#      //! Use Speed Reference.
#      FLAG_SPEED = 0x02,
#      //! Use Z Reference.
#      FLAG_Z = 0x04,
#      //! Use Radius Reference.
#      FLAG_RADIUS = 0x08,
#      //! Use this Reference as Start Position for PathControler.
#      FLAG_START_POINT = 0x10,
#      //! Use Current Position as Start Position for PathControler.
#      FLAG_DIRECT = 0x20,
#      //! Flag Maneuver Completion.
#      FLAG_MANDONE = 0x80
imc_ros_msgs/DesiredSpeed speed
imc_ros_msgs/DesiredZ z
std_msgs/Float64 lat 
std_msgs/Float64 lon
std_msgs/Float32 radius

================================================================================
MSG: imc_ros_msgs/DesiredSpeed
imc_ros_msgs/Header header
std_msgs/Float64 value
std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml

================================================================================
MSG: imc_ros_msgs/DesiredZ
imc_ros_msgs/Header header
std_msgs/Float32 value #unit [m]
std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :imc_ros_msgs/FollowRefState "726407b2cfb995059683aa882a05454a")


