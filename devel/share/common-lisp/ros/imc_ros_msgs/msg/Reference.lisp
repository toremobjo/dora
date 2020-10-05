; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude Reference.msg.html

(cl:defclass <Reference> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (flags
    :reader flags
    :initarg :flags
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (speed
    :reader speed
    :initarg :speed
    :type imc_ros_msgs-msg:DesiredSpeed
    :initform (cl:make-instance 'imc_ros_msgs-msg:DesiredSpeed))
   (z
    :reader z
    :initarg :z
    :type imc_ros_msgs-msg:DesiredZ
    :initform (cl:make-instance 'imc_ros_msgs-msg:DesiredZ))
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
   (radius
    :reader radius
    :initarg :radius
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Reference (<Reference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<Reference> is deprecated: use imc_ros_msgs-msg:Reference instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:flags-val is deprecated.  Use imc_ros_msgs-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:speed-val is deprecated.  Use imc_ros_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:z-val is deprecated.  Use imc_ros_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:lat-val is deprecated.  Use imc_ros_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:lon-val is deprecated.  Use imc_ros_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Reference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:radius-val is deprecated.  Use imc_ros_msgs-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reference>) ostream)
  "Serializes a message object of type '<Reference>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'flags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lon) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radius) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reference>) istream)
  "Deserializes a message object of type '<Reference>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'flags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lon) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radius) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reference>)))
  "Returns string type for a message object of type '<Reference>"
  "imc_ros_msgs/Reference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reference)))
  "Returns string type for a message object of type 'Reference"
  "imc_ros_msgs/Reference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reference>)))
  "Returns md5sum for a message object of type '<Reference>"
  "3fd9aae03cf719e4a18ef0ec94ff4aca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reference)))
  "Returns md5sum for a message object of type 'Reference"
  "3fd9aae03cf719e4a18ef0ec94ff4aca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reference>)))
  "Returns full string definition for message of type '<Reference>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 flags ~%#      //! Use Location Reference.~%#      FLAG_LOCATION = 0x01,~%#      //! Use Speed Reference.~%#      FLAG_SPEED = 0x02,~%#      //! Use Z Reference.~%#      FLAG_Z = 0x04,~%#      //! Use Radius Reference.~%#      FLAG_RADIUS = 0x08,~%#      //! Use this Reference as Start Position for PathControler.~%#      FLAG_START_POINT = 0x10,~%#      //! Use Current Position as Start Position for PathControler.~%#      FLAG_DIRECT = 0x20,~%#      //! Flag Maneuver Completion.~%#      FLAG_MANDONE = 0x80~%imc_ros_msgs/DesiredSpeed speed~%imc_ros_msgs/DesiredZ z~%std_msgs/Float64 lat ~%std_msgs/Float64 lon~%std_msgs/Float32 radius~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: imc_ros_msgs/DesiredSpeed~%imc_ros_msgs/Header header~%std_msgs/Float64 value~%std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml~%~%================================================================================~%MSG: imc_ros_msgs/DesiredZ~%imc_ros_msgs/Header header~%std_msgs/Float32 value #unit [m]~%std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reference)))
  "Returns full string definition for message of type 'Reference"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 flags ~%#      //! Use Location Reference.~%#      FLAG_LOCATION = 0x01,~%#      //! Use Speed Reference.~%#      FLAG_SPEED = 0x02,~%#      //! Use Z Reference.~%#      FLAG_Z = 0x04,~%#      //! Use Radius Reference.~%#      FLAG_RADIUS = 0x08,~%#      //! Use this Reference as Start Position for PathControler.~%#      FLAG_START_POINT = 0x10,~%#      //! Use Current Position as Start Position for PathControler.~%#      FLAG_DIRECT = 0x20,~%#      //! Flag Maneuver Completion.~%#      FLAG_MANDONE = 0x80~%imc_ros_msgs/DesiredSpeed speed~%imc_ros_msgs/DesiredZ z~%std_msgs/Float64 lat ~%std_msgs/Float64 lon~%std_msgs/Float32 radius~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: imc_ros_msgs/DesiredSpeed~%imc_ros_msgs/Header header~%std_msgs/Float64 value~%std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml~%~%================================================================================~%MSG: imc_ros_msgs/DesiredZ~%imc_ros_msgs/Header header~%std_msgs/Float32 value #unit [m]~%std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reference>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'flags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lon))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radius))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reference>))
  "Converts a ROS message object to a list"
  (cl:list 'Reference
    (cl:cons ':header (header msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':z (z msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':radius (radius msg))
))
