; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude YoYo.msg.html

(cl:defclass <YoYo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (timeout
    :reader timeout
    :initarg :timeout
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
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
   (z
    :reader z
    :initarg :z
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (z_units
    :reader z_units
    :initarg :z_units
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (amplitude
    :reader amplitude
    :initarg :amplitude
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (pitch
    :reader pitch
    :initarg :pitch
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (speed
    :reader speed
    :initarg :speed
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (speed_units
    :reader speed_units
    :initarg :speed_units
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (custom
    :reader custom
    :initarg :custom
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass YoYo (<YoYo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoYo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoYo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<YoYo> is deprecated: use imc_ros_msgs-msg:YoYo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:timeout-val is deprecated.  Use imc_ros_msgs-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:lat-val is deprecated.  Use imc_ros_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:lon-val is deprecated.  Use imc_ros_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:z-val is deprecated.  Use imc_ros_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'z_units-val :lambda-list '(m))
(cl:defmethod z_units-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:z_units-val is deprecated.  Use imc_ros_msgs-msg:z_units instead.")
  (z_units m))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:amplitude-val is deprecated.  Use imc_ros_msgs-msg:amplitude instead.")
  (amplitude m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:pitch-val is deprecated.  Use imc_ros_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:speed-val is deprecated.  Use imc_ros_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'speed_units-val :lambda-list '(m))
(cl:defmethod speed_units-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:speed_units-val is deprecated.  Use imc_ros_msgs-msg:speed_units instead.")
  (speed_units m))

(cl:ensure-generic-function 'custom-val :lambda-list '(m))
(cl:defmethod custom-val ((m <YoYo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:custom-val is deprecated.  Use imc_ros_msgs-msg:custom instead.")
  (custom m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoYo>) ostream)
  "Serializes a message object of type '<YoYo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timeout) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lon) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z_units) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'amplitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pitch) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_units) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'custom) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoYo>) istream)
  "Deserializes a message object of type '<YoYo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timeout) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lon) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z_units) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'amplitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pitch) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_units) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'custom) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoYo>)))
  "Returns string type for a message object of type '<YoYo>"
  "imc_ros_msgs/YoYo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoYo)))
  "Returns string type for a message object of type 'YoYo"
  "imc_ros_msgs/YoYo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoYo>)))
  "Returns md5sum for a message object of type '<YoYo>"
  "3b672a88138792100b18e9e70f2f624f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoYo)))
  "Returns md5sum for a message object of type 'YoYo"
  "3b672a88138792100b18e9e70f2f624f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoYo>)))
  "Returns full string definition for message of type '<YoYo>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt16 timeout~%std_msgs/Float64 lat~%std_msgs/Float64 lon~%std_msgs/Float32 z~%std_msgs/UInt8 z_units~%std_msgs/Float32 amplitude~%std_msgs/Float32 pitch~%std_msgs/Float32 speed~%std_msgs/UInt8 speed_units~%std_msgs/String custom~%~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoYo)))
  "Returns full string definition for message of type 'YoYo"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt16 timeout~%std_msgs/Float64 lat~%std_msgs/Float64 lon~%std_msgs/Float32 z~%std_msgs/UInt8 z_units~%std_msgs/Float32 amplitude~%std_msgs/Float32 pitch~%std_msgs/Float32 speed~%std_msgs/UInt8 speed_units~%std_msgs/String custom~%~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoYo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timeout))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lon))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z_units))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'amplitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pitch))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_units))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'custom))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoYo>))
  "Converts a ROS message object to a list"
  (cl:list 'YoYo
    (cl:cons ':header (header msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':z (z msg))
    (cl:cons ':z_units (z_units msg))
    (cl:cons ':amplitude (amplitude msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':speed_units (speed_units msg))
    (cl:cons ':custom (custom msg))
))
