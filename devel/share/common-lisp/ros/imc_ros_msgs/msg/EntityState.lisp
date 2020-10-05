; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude EntityState.msg.html

(cl:defclass <EntityState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass EntityState (<EntityState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EntityState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EntityState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<EntityState> is deprecated: use imc_ros_msgs-msg:EntityState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EntityState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <EntityState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:state-val is deprecated.  Use imc_ros_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EntityState>) ostream)
  "Serializes a message object of type '<EntityState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EntityState>) istream)
  "Deserializes a message object of type '<EntityState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EntityState>)))
  "Returns string type for a message object of type '<EntityState>"
  "imc_ros_msgs/EntityState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EntityState)))
  "Returns string type for a message object of type 'EntityState"
  "imc_ros_msgs/EntityState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EntityState>)))
  "Returns md5sum for a message object of type '<EntityState>"
  "660a5a05f4ca9df1ef20cd088427bc92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EntityState)))
  "Returns md5sum for a message object of type 'EntityState"
  "660a5a05f4ca9df1ef20cd088427bc92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EntityState>)))
  "Returns full string definition for message of type '<EntityState>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 state~%~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EntityState)))
  "Returns full string definition for message of type 'EntityState"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 state~%~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EntityState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EntityState>))
  "Converts a ROS message object to a list"
  (cl:list 'EntityState
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
