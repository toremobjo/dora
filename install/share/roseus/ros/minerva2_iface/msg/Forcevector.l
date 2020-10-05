;; Auto-generated. Do not edit!


(when (boundp 'minerva2_iface::Forcevector)
  (if (not (find-package "MINERVA2_IFACE"))
    (make-package "MINERVA2_IFACE"))
  (shadow 'Forcevector (find-package "MINERVA2_IFACE")))
(unless (find-package "MINERVA2_IFACE::FORCEVECTOR")
  (make-package "MINERVA2_IFACE::FORCEVECTOR"))

(in-package "ROS")
;;//! \htmlinclude Forcevector.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass minerva2_iface::Forcevector
  :super ros::object
  :slots (_header _fx _fy _fz _froll _fpitch _fyaw ))

(defmethod minerva2_iface::Forcevector
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fx __fx) (instance std_msgs::Float32 :init))
    ((:fy __fy) (instance std_msgs::Float32 :init))
    ((:fz __fz) (instance std_msgs::Float32 :init))
    ((:froll __froll) (instance std_msgs::Float32 :init))
    ((:fpitch __fpitch) (instance std_msgs::Float32 :init))
    ((:fyaw __fyaw) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _fx __fx)
   (setq _fy __fy)
   (setq _fz __fz)
   (setq _froll __froll)
   (setq _fpitch __fpitch)
   (setq _fyaw __fyaw)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fx
   (&rest __fx)
   (if (keywordp (car __fx))
       (send* _fx __fx)
     (progn
       (if __fx (setq _fx (car __fx)))
       _fx)))
  (:fy
   (&rest __fy)
   (if (keywordp (car __fy))
       (send* _fy __fy)
     (progn
       (if __fy (setq _fy (car __fy)))
       _fy)))
  (:fz
   (&rest __fz)
   (if (keywordp (car __fz))
       (send* _fz __fz)
     (progn
       (if __fz (setq _fz (car __fz)))
       _fz)))
  (:froll
   (&rest __froll)
   (if (keywordp (car __froll))
       (send* _froll __froll)
     (progn
       (if __froll (setq _froll (car __froll)))
       _froll)))
  (:fpitch
   (&rest __fpitch)
   (if (keywordp (car __fpitch))
       (send* _fpitch __fpitch)
     (progn
       (if __fpitch (setq _fpitch (car __fpitch)))
       _fpitch)))
  (:fyaw
   (&rest __fyaw)
   (if (keywordp (car __fyaw))
       (send* _fyaw __fyaw)
     (progn
       (if __fyaw (setq _fyaw (car __fyaw)))
       _fyaw)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float32 _fx
    (send _fx :serialization-length)
    ;; std_msgs/Float32 _fy
    (send _fy :serialization-length)
    ;; std_msgs/Float32 _fz
    (send _fz :serialization-length)
    ;; std_msgs/Float32 _froll
    (send _froll :serialization-length)
    ;; std_msgs/Float32 _fpitch
    (send _fpitch :serialization-length)
    ;; std_msgs/Float32 _fyaw
    (send _fyaw :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float32 _fx
       (send _fx :serialize s)
     ;; std_msgs/Float32 _fy
       (send _fy :serialize s)
     ;; std_msgs/Float32 _fz
       (send _fz :serialize s)
     ;; std_msgs/Float32 _froll
       (send _froll :serialize s)
     ;; std_msgs/Float32 _fpitch
       (send _fpitch :serialize s)
     ;; std_msgs/Float32 _fyaw
       (send _fyaw :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float32 _fx
     (send _fx :deserialize buf ptr-) (incf ptr- (send _fx :serialization-length))
   ;; std_msgs/Float32 _fy
     (send _fy :deserialize buf ptr-) (incf ptr- (send _fy :serialization-length))
   ;; std_msgs/Float32 _fz
     (send _fz :deserialize buf ptr-) (incf ptr- (send _fz :serialization-length))
   ;; std_msgs/Float32 _froll
     (send _froll :deserialize buf ptr-) (incf ptr- (send _froll :serialization-length))
   ;; std_msgs/Float32 _fpitch
     (send _fpitch :deserialize buf ptr-) (incf ptr- (send _fpitch :serialization-length))
   ;; std_msgs/Float32 _fyaw
     (send _fyaw :deserialize buf ptr-) (incf ptr- (send _fyaw :serialization-length))
   ;;
   self)
  )

(setf (get minerva2_iface::Forcevector :md5sum-) "0e5bbf4247b7e2801d320d0defabc11e")
(setf (get minerva2_iface::Forcevector :datatype-) "minerva2_iface/Forcevector")
(setf (get minerva2_iface::Forcevector :definition-)
      "Header header
std_msgs/Float32 fx
std_msgs/Float32 fy
std_msgs/Float32 fz
std_msgs/Float32 froll
std_msgs/Float32 fpitch
std_msgs/Float32 fyaw

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



(provide :minerva2_iface/Forcevector "0e5bbf4247b7e2801d320d0defabc11e")


