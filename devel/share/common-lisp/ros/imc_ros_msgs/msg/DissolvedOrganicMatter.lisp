; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude DissolvedOrganicMatter.msg.html

(cl:defclass <DissolvedOrganicMatter> (roslisp-msg-protocol:ros-message)
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
   (type
    :reader type
    :initarg :type
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass DissolvedOrganicMatter (<DissolvedOrganicMatter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DissolvedOrganicMatter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DissolvedOrganicMatter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<DissolvedOrganicMatter> is deprecated: use imc_ros_msgs-msg:DissolvedOrganicMatter instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DissolvedOrganicMatter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DissolvedOrganicMatter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:value-val is deprecated.  Use imc_ros_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DissolvedOrganicMatter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:type-val is deprecated.  Use imc_ros_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DissolvedOrganicMatter>) ostream)
  "Serializes a message object of type '<DissolvedOrganicMatter>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DissolvedOrganicMatter>) istream)
  "Deserializes a message object of type '<DissolvedOrganicMatter>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DissolvedOrganicMatter>)))
  "Returns string type for a message object of type '<DissolvedOrganicMatter>"
  "imc_ros_msgs/DissolvedOrganicMatter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DissolvedOrganicMatter)))
  "Returns string type for a message object of type 'DissolvedOrganicMatter"
  "imc_ros_msgs/DissolvedOrganicMatter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DissolvedOrganicMatter>)))
  "Returns md5sum for a message object of type '<DissolvedOrganicMatter>"
  "b215d007e3a074d676c1e2103e2e81a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DissolvedOrganicMatter)))
  "Returns md5sum for a message object of type 'DissolvedOrganicMatter"
  "b215d007e3a074d676c1e2103e2e81a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DissolvedOrganicMatter>)))
  "Returns full string definition for message of type '<DissolvedOrganicMatter>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float32 value~%std_msgs/UInt8 type #0=Colored, 1=Fluorecent~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DissolvedOrganicMatter)))
  "Returns full string definition for message of type 'DissolvedOrganicMatter"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float32 value~%std_msgs/UInt8 type #0=Colored, 1=Fluorecent~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DissolvedOrganicMatter>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DissolvedOrganicMatter>))
  "Converts a ROS message object to a list"
  (cl:list 'DissolvedOrganicMatter
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
    (cl:cons ':type (type msg))
))
