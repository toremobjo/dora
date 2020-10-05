;; Auto-generated. Do not edit!


(when (boundp 'imc_ros_msgs::GpsFix)
  (if (not (find-package "IMC_ROS_MSGS"))
    (make-package "IMC_ROS_MSGS"))
  (shadow 'GpsFix (find-package "IMC_ROS_MSGS")))
(unless (find-package "IMC_ROS_MSGS::GPSFIX")
  (make-package "IMC_ROS_MSGS::GPSFIX"))

(in-package "ROS")
;;//! \htmlinclude GpsFix.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass imc_ros_msgs::GpsFix
  :super ros::object
  :slots (_header _validity _type _utc_year _utc_month _utc_day _utc_time _lat _lon _height _satelllites _cog _sog _hdop _vdop _hacc _vacc ))

(defmethod imc_ros_msgs::GpsFix
  (:init
   (&key
    ((:header __header) (instance imc_ros_msgs::Header :init))
    ((:validity __validity) (instance std_msgs::UInt16 :init))
    ((:type __type) (instance std_msgs::UInt8 :init))
    ((:utc_year __utc_year) (instance std_msgs::UInt16 :init))
    ((:utc_month __utc_month) (instance std_msgs::UInt8 :init))
    ((:utc_day __utc_day) (instance std_msgs::UInt8 :init))
    ((:utc_time __utc_time) (instance std_msgs::Float32 :init))
    ((:lat __lat) (instance std_msgs::Float64 :init))
    ((:lon __lon) (instance std_msgs::Float64 :init))
    ((:height __height) (instance std_msgs::Float32 :init))
    ((:satelllites __satelllites) (instance std_msgs::UInt8 :init))
    ((:cog __cog) (instance std_msgs::Float32 :init))
    ((:sog __sog) (instance std_msgs::Float32 :init))
    ((:hdop __hdop) (instance std_msgs::Float32 :init))
    ((:vdop __vdop) (instance std_msgs::Float32 :init))
    ((:hacc __hacc) (instance std_msgs::Float32 :init))
    ((:vacc __vacc) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _validity __validity)
   (setq _type __type)
   (setq _utc_year __utc_year)
   (setq _utc_month __utc_month)
   (setq _utc_day __utc_day)
   (setq _utc_time __utc_time)
   (setq _lat __lat)
   (setq _lon __lon)
   (setq _height __height)
   (setq _satelllites __satelllites)
   (setq _cog __cog)
   (setq _sog __sog)
   (setq _hdop __hdop)
   (setq _vdop __vdop)
   (setq _hacc __hacc)
   (setq _vacc __vacc)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:validity
   (&rest __validity)
   (if (keywordp (car __validity))
       (send* _validity __validity)
     (progn
       (if __validity (setq _validity (car __validity)))
       _validity)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:utc_year
   (&rest __utc_year)
   (if (keywordp (car __utc_year))
       (send* _utc_year __utc_year)
     (progn
       (if __utc_year (setq _utc_year (car __utc_year)))
       _utc_year)))
  (:utc_month
   (&rest __utc_month)
   (if (keywordp (car __utc_month))
       (send* _utc_month __utc_month)
     (progn
       (if __utc_month (setq _utc_month (car __utc_month)))
       _utc_month)))
  (:utc_day
   (&rest __utc_day)
   (if (keywordp (car __utc_day))
       (send* _utc_day __utc_day)
     (progn
       (if __utc_day (setq _utc_day (car __utc_day)))
       _utc_day)))
  (:utc_time
   (&rest __utc_time)
   (if (keywordp (car __utc_time))
       (send* _utc_time __utc_time)
     (progn
       (if __utc_time (setq _utc_time (car __utc_time)))
       _utc_time)))
  (:lat
   (&rest __lat)
   (if (keywordp (car __lat))
       (send* _lat __lat)
     (progn
       (if __lat (setq _lat (car __lat)))
       _lat)))
  (:lon
   (&rest __lon)
   (if (keywordp (car __lon))
       (send* _lon __lon)
     (progn
       (if __lon (setq _lon (car __lon)))
       _lon)))
  (:height
   (&rest __height)
   (if (keywordp (car __height))
       (send* _height __height)
     (progn
       (if __height (setq _height (car __height)))
       _height)))
  (:satelllites
   (&rest __satelllites)
   (if (keywordp (car __satelllites))
       (send* _satelllites __satelllites)
     (progn
       (if __satelllites (setq _satelllites (car __satelllites)))
       _satelllites)))
  (:cog
   (&rest __cog)
   (if (keywordp (car __cog))
       (send* _cog __cog)
     (progn
       (if __cog (setq _cog (car __cog)))
       _cog)))
  (:sog
   (&rest __sog)
   (if (keywordp (car __sog))
       (send* _sog __sog)
     (progn
       (if __sog (setq _sog (car __sog)))
       _sog)))
  (:hdop
   (&rest __hdop)
   (if (keywordp (car __hdop))
       (send* _hdop __hdop)
     (progn
       (if __hdop (setq _hdop (car __hdop)))
       _hdop)))
  (:vdop
   (&rest __vdop)
   (if (keywordp (car __vdop))
       (send* _vdop __vdop)
     (progn
       (if __vdop (setq _vdop (car __vdop)))
       _vdop)))
  (:hacc
   (&rest __hacc)
   (if (keywordp (car __hacc))
       (send* _hacc __hacc)
     (progn
       (if __hacc (setq _hacc (car __hacc)))
       _hacc)))
  (:vacc
   (&rest __vacc)
   (if (keywordp (car __vacc))
       (send* _vacc __vacc)
     (progn
       (if __vacc (setq _vacc (car __vacc)))
       _vacc)))
  (:serialization-length
   ()
   (+
    ;; imc_ros_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt16 _validity
    (send _validity :serialization-length)
    ;; std_msgs/UInt8 _type
    (send _type :serialization-length)
    ;; std_msgs/UInt16 _utc_year
    (send _utc_year :serialization-length)
    ;; std_msgs/UInt8 _utc_month
    (send _utc_month :serialization-length)
    ;; std_msgs/UInt8 _utc_day
    (send _utc_day :serialization-length)
    ;; std_msgs/Float32 _utc_time
    (send _utc_time :serialization-length)
    ;; std_msgs/Float64 _lat
    (send _lat :serialization-length)
    ;; std_msgs/Float64 _lon
    (send _lon :serialization-length)
    ;; std_msgs/Float32 _height
    (send _height :serialization-length)
    ;; std_msgs/UInt8 _satelllites
    (send _satelllites :serialization-length)
    ;; std_msgs/Float32 _cog
    (send _cog :serialization-length)
    ;; std_msgs/Float32 _sog
    (send _sog :serialization-length)
    ;; std_msgs/Float32 _hdop
    (send _hdop :serialization-length)
    ;; std_msgs/Float32 _vdop
    (send _vdop :serialization-length)
    ;; std_msgs/Float32 _hacc
    (send _hacc :serialization-length)
    ;; std_msgs/Float32 _vacc
    (send _vacc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; imc_ros_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt16 _validity
       (send _validity :serialize s)
     ;; std_msgs/UInt8 _type
       (send _type :serialize s)
     ;; std_msgs/UInt16 _utc_year
       (send _utc_year :serialize s)
     ;; std_msgs/UInt8 _utc_month
       (send _utc_month :serialize s)
     ;; std_msgs/UInt8 _utc_day
       (send _utc_day :serialize s)
     ;; std_msgs/Float32 _utc_time
       (send _utc_time :serialize s)
     ;; std_msgs/Float64 _lat
       (send _lat :serialize s)
     ;; std_msgs/Float64 _lon
       (send _lon :serialize s)
     ;; std_msgs/Float32 _height
       (send _height :serialize s)
     ;; std_msgs/UInt8 _satelllites
       (send _satelllites :serialize s)
     ;; std_msgs/Float32 _cog
       (send _cog :serialize s)
     ;; std_msgs/Float32 _sog
       (send _sog :serialize s)
     ;; std_msgs/Float32 _hdop
       (send _hdop :serialize s)
     ;; std_msgs/Float32 _vdop
       (send _vdop :serialize s)
     ;; std_msgs/Float32 _hacc
       (send _hacc :serialize s)
     ;; std_msgs/Float32 _vacc
       (send _vacc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; imc_ros_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt16 _validity
     (send _validity :deserialize buf ptr-) (incf ptr- (send _validity :serialization-length))
   ;; std_msgs/UInt8 _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; std_msgs/UInt16 _utc_year
     (send _utc_year :deserialize buf ptr-) (incf ptr- (send _utc_year :serialization-length))
   ;; std_msgs/UInt8 _utc_month
     (send _utc_month :deserialize buf ptr-) (incf ptr- (send _utc_month :serialization-length))
   ;; std_msgs/UInt8 _utc_day
     (send _utc_day :deserialize buf ptr-) (incf ptr- (send _utc_day :serialization-length))
   ;; std_msgs/Float32 _utc_time
     (send _utc_time :deserialize buf ptr-) (incf ptr- (send _utc_time :serialization-length))
   ;; std_msgs/Float64 _lat
     (send _lat :deserialize buf ptr-) (incf ptr- (send _lat :serialization-length))
   ;; std_msgs/Float64 _lon
     (send _lon :deserialize buf ptr-) (incf ptr- (send _lon :serialization-length))
   ;; std_msgs/Float32 _height
     (send _height :deserialize buf ptr-) (incf ptr- (send _height :serialization-length))
   ;; std_msgs/UInt8 _satelllites
     (send _satelllites :deserialize buf ptr-) (incf ptr- (send _satelllites :serialization-length))
   ;; std_msgs/Float32 _cog
     (send _cog :deserialize buf ptr-) (incf ptr- (send _cog :serialization-length))
   ;; std_msgs/Float32 _sog
     (send _sog :deserialize buf ptr-) (incf ptr- (send _sog :serialization-length))
   ;; std_msgs/Float32 _hdop
     (send _hdop :deserialize buf ptr-) (incf ptr- (send _hdop :serialization-length))
   ;; std_msgs/Float32 _vdop
     (send _vdop :deserialize buf ptr-) (incf ptr- (send _vdop :serialization-length))
   ;; std_msgs/Float32 _hacc
     (send _hacc :deserialize buf ptr-) (incf ptr- (send _hacc :serialization-length))
   ;; std_msgs/Float32 _vacc
     (send _vacc :deserialize buf ptr-) (incf ptr- (send _vacc :serialization-length))
   ;;
   self)
  )

(setf (get imc_ros_msgs::GpsFix :md5sum-) "7e630f5dd515c436f3c9c075f57ba522")
(setf (get imc_ros_msgs::GpsFix :datatype-) "imc_ros_msgs/GpsFix")
(setf (get imc_ros_msgs::GpsFix :definition-)
      "imc_ros_msgs/Header header
std_msgs/UInt16 validity #0x0001=VALID_DATE 0x0002=VALID_TIME 0x0003=VALID_POS 0x0008=VALID_COG etc, see IMC.xml
std_msgs/UInt8 type #see IMC.xml
std_msgs/UInt16 utc_year
std_msgs/UInt8 utc_month
std_msgs/UInt8 utc_day
std_msgs/Float32 utc_time
std_msgs/Float64 lat
std_msgs/Float64 lon
std_msgs/Float32 height
std_msgs/UInt8 satelllites
std_msgs/Float32 cog
std_msgs/Float32 sog
std_msgs/Float32 hdop
std_msgs/Float32 vdop
std_msgs/Float32 hacc
std_msgs/Float32 vacc

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



(provide :imc_ros_msgs/GpsFix "7e630f5dd515c436f3c9c075f57ba522")


