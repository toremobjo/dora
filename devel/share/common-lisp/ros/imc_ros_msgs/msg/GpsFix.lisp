; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude GpsFix.msg.html

(cl:defclass <GpsFix> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (validity
    :reader validity
    :initarg :validity
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (type
    :reader type
    :initarg :type
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (utc_year
    :reader utc_year
    :initarg :utc_year
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (utc_month
    :reader utc_month
    :initarg :utc_month
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (utc_day
    :reader utc_day
    :initarg :utc_day
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (utc_time
    :reader utc_time
    :initarg :utc_time
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (lat
    :reader lat
    :initarg :lat
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (lon
    :reader lon
    :initarg :lon
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (height
    :reader height
    :initarg :height
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (satelllites
    :reader satelllites
    :initarg :satelllites
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (cog
    :reader cog
    :initarg :cog
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (sog
    :reader sog
    :initarg :sog
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (hdop
    :reader hdop
    :initarg :hdop
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (vdop
    :reader vdop
    :initarg :vdop
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (hacc
    :reader hacc
    :initarg :hacc
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (vacc
    :reader vacc
    :initarg :vacc
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass GpsFix (<GpsFix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsFix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsFix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<GpsFix> is deprecated: use imc_ros_msgs-msg:GpsFix instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'validity-val :lambda-list '(m))
(cl:defmethod validity-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:validity-val is deprecated.  Use imc_ros_msgs-msg:validity instead.")
  (validity m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:type-val is deprecated.  Use imc_ros_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'utc_year-val :lambda-list '(m))
(cl:defmethod utc_year-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:utc_year-val is deprecated.  Use imc_ros_msgs-msg:utc_year instead.")
  (utc_year m))

(cl:ensure-generic-function 'utc_month-val :lambda-list '(m))
(cl:defmethod utc_month-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:utc_month-val is deprecated.  Use imc_ros_msgs-msg:utc_month instead.")
  (utc_month m))

(cl:ensure-generic-function 'utc_day-val :lambda-list '(m))
(cl:defmethod utc_day-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:utc_day-val is deprecated.  Use imc_ros_msgs-msg:utc_day instead.")
  (utc_day m))

(cl:ensure-generic-function 'utc_time-val :lambda-list '(m))
(cl:defmethod utc_time-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:utc_time-val is deprecated.  Use imc_ros_msgs-msg:utc_time instead.")
  (utc_time m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:lat-val is deprecated.  Use imc_ros_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:lon-val is deprecated.  Use imc_ros_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:height-val is deprecated.  Use imc_ros_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'satelllites-val :lambda-list '(m))
(cl:defmethod satelllites-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:satelllites-val is deprecated.  Use imc_ros_msgs-msg:satelllites instead.")
  (satelllites m))

(cl:ensure-generic-function 'cog-val :lambda-list '(m))
(cl:defmethod cog-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:cog-val is deprecated.  Use imc_ros_msgs-msg:cog instead.")
  (cog m))

(cl:ensure-generic-function 'sog-val :lambda-list '(m))
(cl:defmethod sog-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:sog-val is deprecated.  Use imc_ros_msgs-msg:sog instead.")
  (sog m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:hdop-val is deprecated.  Use imc_ros_msgs-msg:hdop instead.")
  (hdop m))

(cl:ensure-generic-function 'vdop-val :lambda-list '(m))
(cl:defmethod vdop-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:vdop-val is deprecated.  Use imc_ros_msgs-msg:vdop instead.")
  (vdop m))

(cl:ensure-generic-function 'hacc-val :lambda-list '(m))
(cl:defmethod hacc-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:hacc-val is deprecated.  Use imc_ros_msgs-msg:hacc instead.")
  (hacc m))

(cl:ensure-generic-function 'vacc-val :lambda-list '(m))
(cl:defmethod vacc-val ((m <GpsFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:vacc-val is deprecated.  Use imc_ros_msgs-msg:vacc instead.")
  (vacc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsFix>) ostream)
  "Serializes a message object of type '<GpsFix>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'validity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utc_year) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utc_month) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utc_day) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utc_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lon) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'height) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'satelllites) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cog) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sog) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hdop) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vdop) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hacc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vacc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsFix>) istream)
  "Deserializes a message object of type '<GpsFix>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'validity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utc_year) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utc_month) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utc_day) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utc_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lon) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'height) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'satelllites) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cog) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sog) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hdop) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vdop) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hacc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vacc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsFix>)))
  "Returns string type for a message object of type '<GpsFix>"
  "imc_ros_msgs/GpsFix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsFix)))
  "Returns string type for a message object of type 'GpsFix"
  "imc_ros_msgs/GpsFix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsFix>)))
  "Returns md5sum for a message object of type '<GpsFix>"
  "7e630f5dd515c436f3c9c075f57ba522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsFix)))
  "Returns md5sum for a message object of type 'GpsFix"
  "7e630f5dd515c436f3c9c075f57ba522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsFix>)))
  "Returns full string definition for message of type '<GpsFix>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt16 validity #0x0001=VALID_DATE 0x0002=VALID_TIME 0x0003=VALID_POS 0x0008=VALID_COG etc, see IMC.xml~%std_msgs/UInt8 type #see IMC.xml~%std_msgs/UInt16 utc_year~%std_msgs/UInt8 utc_month~%std_msgs/UInt8 utc_day~%std_msgs/Float32 utc_time~%std_msgs/Float64 lat~%std_msgs/Float64 lon~%std_msgs/Float32 height~%std_msgs/UInt8 satelllites~%std_msgs/Float32 cog~%std_msgs/Float32 sog~%std_msgs/Float32 hdop~%std_msgs/Float32 vdop~%std_msgs/Float32 hacc~%std_msgs/Float32 vacc~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsFix)))
  "Returns full string definition for message of type 'GpsFix"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt16 validity #0x0001=VALID_DATE 0x0002=VALID_TIME 0x0003=VALID_POS 0x0008=VALID_COG etc, see IMC.xml~%std_msgs/UInt8 type #see IMC.xml~%std_msgs/UInt16 utc_year~%std_msgs/UInt8 utc_month~%std_msgs/UInt8 utc_day~%std_msgs/Float32 utc_time~%std_msgs/Float64 lat~%std_msgs/Float64 lon~%std_msgs/Float32 height~%std_msgs/UInt8 satelllites~%std_msgs/Float32 cog~%std_msgs/Float32 sog~%std_msgs/Float32 hdop~%std_msgs/Float32 vdop~%std_msgs/Float32 hacc~%std_msgs/Float32 vacc~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsFix>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'validity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utc_year))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utc_month))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utc_day))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utc_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lon))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'height))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'satelllites))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cog))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sog))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hdop))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vdop))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hacc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vacc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsFix>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsFix
    (cl:cons ':header (header msg))
    (cl:cons ':validity (validity msg))
    (cl:cons ':type (type msg))
    (cl:cons ':utc_year (utc_year msg))
    (cl:cons ':utc_month (utc_month msg))
    (cl:cons ':utc_day (utc_day msg))
    (cl:cons ':utc_time (utc_time msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':height (height msg))
    (cl:cons ':satelllites (satelllites msg))
    (cl:cons ':cog (cog msg))
    (cl:cons ':sog (sog msg))
    (cl:cons ':hdop (hdop msg))
    (cl:cons ':vdop (vdop msg))
    (cl:cons ':hacc (hacc msg))
    (cl:cons ':vacc (vacc msg))
))
