; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude OperationalLimits.msg.html

(cl:defclass <OperationalLimits> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (mask
    :reader mask
    :initarg :mask
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (max_depth
    :reader max_depth
    :initarg :max_depth
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (min_altitude
    :reader min_altitude
    :initarg :min_altitude
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (max_altitude
    :reader max_altitude
    :initarg :max_altitude
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (min_speed
    :reader min_speed
    :initarg :min_speed
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (max_vrate
    :reader max_vrate
    :initarg :max_vrate
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
   (orientation
    :reader orientation
    :initarg :orientation
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (width
    :reader width
    :initarg :width
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (length
    :reader length
    :initarg :length
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass OperationalLimits (<OperationalLimits>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OperationalLimits>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OperationalLimits)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<OperationalLimits> is deprecated: use imc_ros_msgs-msg:OperationalLimits instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:mask-val is deprecated.  Use imc_ros_msgs-msg:mask instead.")
  (mask m))

(cl:ensure-generic-function 'max_depth-val :lambda-list '(m))
(cl:defmethod max_depth-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:max_depth-val is deprecated.  Use imc_ros_msgs-msg:max_depth instead.")
  (max_depth m))

(cl:ensure-generic-function 'min_altitude-val :lambda-list '(m))
(cl:defmethod min_altitude-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:min_altitude-val is deprecated.  Use imc_ros_msgs-msg:min_altitude instead.")
  (min_altitude m))

(cl:ensure-generic-function 'max_altitude-val :lambda-list '(m))
(cl:defmethod max_altitude-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:max_altitude-val is deprecated.  Use imc_ros_msgs-msg:max_altitude instead.")
  (max_altitude m))

(cl:ensure-generic-function 'min_speed-val :lambda-list '(m))
(cl:defmethod min_speed-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:min_speed-val is deprecated.  Use imc_ros_msgs-msg:min_speed instead.")
  (min_speed m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:max_speed-val is deprecated.  Use imc_ros_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'max_vrate-val :lambda-list '(m))
(cl:defmethod max_vrate-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:max_vrate-val is deprecated.  Use imc_ros_msgs-msg:max_vrate instead.")
  (max_vrate m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:lat-val is deprecated.  Use imc_ros_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:lon-val is deprecated.  Use imc_ros_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:orientation-val is deprecated.  Use imc_ros_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:width-val is deprecated.  Use imc_ros_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <OperationalLimits>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:length-val is deprecated.  Use imc_ros_msgs-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OperationalLimits>) ostream)
  "Serializes a message object of type '<OperationalLimits>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_depth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min_altitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_altitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min_speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_vrate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lon) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'width) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'length) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OperationalLimits>) istream)
  "Deserializes a message object of type '<OperationalLimits>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_depth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min_altitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_altitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min_speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_vrate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lon) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'width) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'length) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OperationalLimits>)))
  "Returns string type for a message object of type '<OperationalLimits>"
  "imc_ros_msgs/OperationalLimits")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OperationalLimits)))
  "Returns string type for a message object of type 'OperationalLimits"
  "imc_ros_msgs/OperationalLimits")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OperationalLimits>)))
  "Returns md5sum for a message object of type '<OperationalLimits>"
  "9f341e7d12deb64a4dcdcdf13b3769d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OperationalLimits)))
  "Returns md5sum for a message object of type 'OperationalLimits"
  "9f341e7d12deb64a4dcdcdf13b3769d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OperationalLimits>)))
  "Returns full string definition for message of type '<OperationalLimits>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 mask #See IMC.xml~%std_msgs/Float32 max_depth~%std_msgs/Float32 min_altitude~%std_msgs/Float32 max_altitude~%std_msgs/Float32 min_speed~%std_msgs/Float32 max_speed~%std_msgs/Float32 max_vrate~%std_msgs/Float64 lat~%std_msgs/Float64 lon~%std_msgs/Float32 orientation~%std_msgs/Float32 width~%std_msgs/Float32 length~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OperationalLimits)))
  "Returns full string definition for message of type 'OperationalLimits"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 mask #See IMC.xml~%std_msgs/Float32 max_depth~%std_msgs/Float32 min_altitude~%std_msgs/Float32 max_altitude~%std_msgs/Float32 min_speed~%std_msgs/Float32 max_speed~%std_msgs/Float32 max_vrate~%std_msgs/Float64 lat~%std_msgs/Float64 lon~%std_msgs/Float32 orientation~%std_msgs/Float32 width~%std_msgs/Float32 length~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OperationalLimits>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_depth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min_altitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_altitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min_speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_vrate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lon))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'width))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'length))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OperationalLimits>))
  "Converts a ROS message object to a list"
  (cl:list 'OperationalLimits
    (cl:cons ':header (header msg))
    (cl:cons ':mask (mask msg))
    (cl:cons ':max_depth (max_depth msg))
    (cl:cons ':min_altitude (min_altitude msg))
    (cl:cons ':max_altitude (max_altitude msg))
    (cl:cons ':min_speed (min_speed msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':max_vrate (max_vrate msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':width (width msg))
    (cl:cons ':length (length msg))
))
