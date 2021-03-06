; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude Heartbeat.msg.html

(cl:defclass <Heartbeat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header)))
)

(cl:defclass Heartbeat (<Heartbeat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Heartbeat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Heartbeat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<Heartbeat> is deprecated: use imc_ros_msgs-msg:Heartbeat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Heartbeat>) ostream)
  "Serializes a message object of type '<Heartbeat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Heartbeat>) istream)
  "Deserializes a message object of type '<Heartbeat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Heartbeat>)))
  "Returns string type for a message object of type '<Heartbeat>"
  "imc_ros_msgs/Heartbeat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Heartbeat)))
  "Returns string type for a message object of type 'Heartbeat"
  "imc_ros_msgs/Heartbeat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Heartbeat>)))
  "Returns md5sum for a message object of type '<Heartbeat>"
  "06fbfc9bc6f2d5db4ca6e41fe5aa5ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Heartbeat)))
  "Returns md5sum for a message object of type 'Heartbeat"
  "06fbfc9bc6f2d5db4ca6e41fe5aa5ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Heartbeat>)))
  "Returns full string definition for message of type '<Heartbeat>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Heartbeat)))
  "Returns full string definition for message of type 'Heartbeat"
  (cl:format cl:nil "imc_ros_msgs/Header header~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Heartbeat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Heartbeat>))
  "Converts a ROS message object to a list"
  (cl:list 'Heartbeat
    (cl:cons ':header (header msg))
))
