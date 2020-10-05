; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude VehicleMedium.msg.html

(cl:defclass <VehicleMedium> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (medium
    :reader medium
    :initarg :medium
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass VehicleMedium (<VehicleMedium>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleMedium>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleMedium)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<VehicleMedium> is deprecated: use imc_ros_msgs-msg:VehicleMedium instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleMedium>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'medium-val :lambda-list '(m))
(cl:defmethod medium-val ((m <VehicleMedium>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:medium-val is deprecated.  Use imc_ros_msgs-msg:medium instead.")
  (medium m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleMedium>) ostream)
  "Serializes a message object of type '<VehicleMedium>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'medium) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleMedium>) istream)
  "Deserializes a message object of type '<VehicleMedium>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'medium) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleMedium>)))
  "Returns string type for a message object of type '<VehicleMedium>"
  "imc_ros_msgs/VehicleMedium")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleMedium)))
  "Returns string type for a message object of type 'VehicleMedium"
  "imc_ros_msgs/VehicleMedium")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleMedium>)))
  "Returns md5sum for a message object of type '<VehicleMedium>"
  "47ca94d311680139b7e2894a4794a001")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleMedium)))
  "Returns md5sum for a message object of type 'VehicleMedium"
  "47ca94d311680139b7e2894a4794a001")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleMedium>)))
  "Returns full string definition for message of type '<VehicleMedium>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 medium~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleMedium)))
  "Returns full string definition for message of type 'VehicleMedium"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 medium~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleMedium>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'medium))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleMedium>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleMedium
    (cl:cons ':header (header msg))
    (cl:cons ':medium (medium msg))
))
