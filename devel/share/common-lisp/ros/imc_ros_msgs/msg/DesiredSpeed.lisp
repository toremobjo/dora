; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude DesiredSpeed.msg.html

(cl:defclass <DesiredSpeed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (speed_units
    :reader speed_units
    :initarg :speed_units
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass DesiredSpeed (<DesiredSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DesiredSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DesiredSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<DesiredSpeed> is deprecated: use imc_ros_msgs-msg:DesiredSpeed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DesiredSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DesiredSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:value-val is deprecated.  Use imc_ros_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'speed_units-val :lambda-list '(m))
(cl:defmethod speed_units-val ((m <DesiredSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:speed_units-val is deprecated.  Use imc_ros_msgs-msg:speed_units instead.")
  (speed_units m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DesiredSpeed>) ostream)
  "Serializes a message object of type '<DesiredSpeed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_units) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DesiredSpeed>) istream)
  "Deserializes a message object of type '<DesiredSpeed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_units) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DesiredSpeed>)))
  "Returns string type for a message object of type '<DesiredSpeed>"
  "imc_ros_msgs/DesiredSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesiredSpeed)))
  "Returns string type for a message object of type 'DesiredSpeed"
  "imc_ros_msgs/DesiredSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DesiredSpeed>)))
  "Returns md5sum for a message object of type '<DesiredSpeed>"
  "46fbcc518ffa3d364ddea96de11c27a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DesiredSpeed)))
  "Returns md5sum for a message object of type 'DesiredSpeed"
  "46fbcc518ffa3d364ddea96de11c27a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DesiredSpeed>)))
  "Returns full string definition for message of type '<DesiredSpeed>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float64 value~%std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DesiredSpeed)))
  "Returns full string definition for message of type 'DesiredSpeed"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float64 value~%std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DesiredSpeed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_units))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DesiredSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'DesiredSpeed
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
    (cl:cons ':speed_units (speed_units msg))
))
