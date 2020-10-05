; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude DesiredZ.msg.html

(cl:defclass <DesiredZ> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (z_units
    :reader z_units
    :initarg :z_units
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass DesiredZ (<DesiredZ>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DesiredZ>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DesiredZ)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<DesiredZ> is deprecated: use imc_ros_msgs-msg:DesiredZ instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DesiredZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DesiredZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:value-val is deprecated.  Use imc_ros_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'z_units-val :lambda-list '(m))
(cl:defmethod z_units-val ((m <DesiredZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:z_units-val is deprecated.  Use imc_ros_msgs-msg:z_units instead.")
  (z_units m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DesiredZ>) ostream)
  "Serializes a message object of type '<DesiredZ>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z_units) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DesiredZ>) istream)
  "Deserializes a message object of type '<DesiredZ>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z_units) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DesiredZ>)))
  "Returns string type for a message object of type '<DesiredZ>"
  "imc_ros_msgs/DesiredZ")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DesiredZ)))
  "Returns string type for a message object of type 'DesiredZ"
  "imc_ros_msgs/DesiredZ")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DesiredZ>)))
  "Returns md5sum for a message object of type '<DesiredZ>"
  "8e50b0573a97372cb54fac52b5f32e48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DesiredZ)))
  "Returns md5sum for a message object of type 'DesiredZ"
  "8e50b0573a97372cb54fac52b5f32e48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DesiredZ>)))
  "Returns full string definition for message of type '<DesiredZ>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float32 value #unit [m]~%std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DesiredZ)))
  "Returns full string definition for message of type 'DesiredZ"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float32 value #unit [m]~%std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DesiredZ>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z_units))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DesiredZ>))
  "Converts a ROS message object to a list"
  (cl:list 'DesiredZ
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
    (cl:cons ':z_units (z_units msg))
))
