;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::PlanControlState)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'PlanControlState (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::PLANCONTROLSTATE")
  (make-package "IMC_ROS_MSGS::PLANCONTROLSTATE"))

(in-package "ROS")
;;//! \htmlinclude PlanControlState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::PlanControlState
  :super ros::object
  :slots (_header _state _plan_id _plan_eta _plan_progress _man_id _man_type _man_eta _last_outcome ))

(defmethod imc_ros_msgs::PlanControlState
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:state __state) (instance std_msgs::UInt8 :init))
    ((:plan_id __plan_id) (instance std_msgs::String :init))
    ((:plan_eta __plan_eta) (instance std_msgs::Int32 :init))
    ((:plan_progress __plan_progress) (instance std_msgs::Float32 :init))
    ((:man_id __man_id) (instance std_msgs::String :init))
    ((:man_type __man_type) (instance std_msgs::UInt16 :init))
    ((:man_eta __man_eta) (instance std_msgs::Int32 :init))
    ((:last_outcome __last_outcome) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   (setq _plan_id __plan_id)
   (setq _plan_eta __plan_eta)
   (setq _plan_progress __plan_progress)
   (setq _man_id __man_id)
   (setq _man_type __man_type)
   (setq _man_eta __man_eta)
   (setq _last_outcome __last_outcome)
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
  (:plan_id
   (&rest __plan_id)
   (if (keywordp (car __plan_id))
       (send* _plan_id __plan_id)
     (progn
       (if __plan_id (setq _plan_id (car __plan_id)))
       _plan_id)))
  (:plan_eta
   (&rest __plan_eta)
   (if (keywordp (car __plan_eta))
       (send* _plan_eta __plan_eta)
     (progn
       (if __plan_eta (setq _plan_eta (car __plan_eta)))
       _plan_eta)))
  (:plan_progress
   (&rest __plan_progress)
   (if (keywordp (car __plan_progress))
       (send* _plan_progress __plan_progress)
     (progn
       (if __plan_progress (setq _plan_progress (car __plan_progress)))
       _plan_progress)))
  (:man_id
   (&rest __man_id)
   (if (keywordp (car __man_id))
       (send* _man_id __man_id)
     (progn
       (if __man_id (setq _man_id (car __man_id)))
       _man_id)))
  (:man_type
   (&rest __man_type)
   (if (keywordp (car __man_type))
       (send* _man_type __man_type)
     (progn
       (if __man_type (setq _man_type (car __man_type)))
       _man_type)))
  (:man_eta
   (&rest __man_eta)
   (if (keywordp (car __man_eta))
       (send* _man_eta __man_eta)
     (progn
       (if __man_eta (setq _man_eta (car __man_eta)))
       _man_eta)))
  (:last_outcome
   (&rest __last_outcome)
   (if (keywordp (car __last_outcome))
       (send* _last_outcome __last_outcome)
     (progn
       (if __last_outcome (setq _last_outcome (car __last_outcome)))
       _last_outcome)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _state
    (send _state :serialization-length)
    ;; std_msgs/String _plan_id
    (send _plan_id :serialization-length)
    ;; std_msgs/Int32 _plan_eta
    (send _plan_eta :serialization-length)
    ;; std_msgs/Float32 _plan_progress
    (send _plan_progress :serialization-length)
    ;; std_msgs/String _man_id
    (send _man_id :serialization-length)
    ;; std_msgs/UInt16 _man_type
    (send _man_type :serialization-length)
    ;; std_msgs/Int32 _man_eta
    (send _man_eta :serialization-length)
    ;; std_msgs/UInt8 _last_outcome
    (send _last_outcome :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _state
       (send _state :serialize s)
     ;; std_msgs/String _plan_id
       (send _plan_id :serialize s)
     ;; std_msgs/Int32 _plan_eta
       (send _plan_eta :serialize s)
     ;; std_msgs/Float32 _plan_progress
       (send _plan_progress :serialize s)
     ;; std_msgs/String _man_id
       (send _man_id :serialize s)
     ;; std_msgs/UInt16 _man_type
       (send _man_type :serialize s)
     ;; std_msgs/Int32 _man_eta
       (send _man_eta :serialize s)
     ;; std_msgs/UInt8 _last_outcome
       (send _last_outcome :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; std_msgs/String _plan_id
     (send _plan_id :deserialize buf ptr-) (incf ptr- (send _plan_id :serialization-length))
   ;; std_msgs/Int32 _plan_eta
     (send _plan_eta :deserialize buf ptr-) (incf ptr- (send _plan_eta :serialization-length))
   ;; std_msgs/Float32 _plan_progress
     (send _plan_progress :deserialize buf ptr-) (incf ptr- (send _plan_progress :serialization-length))
   ;; std_msgs/String _man_id
     (send _man_id :deserialize buf ptr-) (incf ptr- (send _man_id :serialization-length))
   ;; std_msgs/UInt16 _man_type
     (send _man_type :deserialize buf ptr-) (incf ptr- (send _man_type :serialization-length))
   ;; std_msgs/Int32 _man_eta
     (send _man_eta :deserialize buf ptr-) (incf ptr- (send _man_eta :serialization-length))
   ;; std_msgs/UInt8 _last_outcome
     (send _last_outcome :deserialize buf ptr-) (incf ptr- (send _last_outcome :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::PlanControlState :md5sum-) "37c774ecf5519b9a486a42a0755de1f7")
(setf (get imc_ros_msgs::PlanControlState :datatype-) "imc_ros_msgs/PlanControlState")
(setf (get imc_ros_msgs::PlanControlState :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt8 state
std_msgs/String plan_id
std_msgs/Int32 plan_eta
std_msgs/Float32 plan_progress
std_msgs/String man_id
std_msgs/UInt16 man_type
std_msgs/Int32 man_eta
std_msgs/UInt8 last_outcome #See IMC.xml


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
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :imc_ros_msgs/PlanControlState "37c774ecf5519b9a486a42a0755de1f7")


