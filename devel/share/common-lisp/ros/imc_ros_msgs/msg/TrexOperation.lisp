; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude TrexOperation.msg.html

(cl:defclass <TrexOperation> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (op
    :reader op
    :initarg :op
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (token
    :reader token
    :initarg :token
    :type imc_ros_msgs-msg:TrexToken
    :initform (cl:make-instance 'imc_ros_msgs-msg:TrexToken)))
)

(cl:defclass TrexOperation (<TrexOperation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrexOperation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrexOperation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<TrexOperation> is deprecated: use imc_ros_msgs-msg:TrexOperation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrexOperation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <TrexOperation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:op-val is deprecated.  Use imc_ros_msgs-msg:op instead.")
  (op m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <TrexOperation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:goal_id-val is deprecated.  Use imc_ros_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'token-val :lambda-list '(m))
(cl:defmethod token-val ((m <TrexOperation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:token-val is deprecated.  Use imc_ros_msgs-msg:token instead.")
  (token m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrexOperation>) ostream)
  "Serializes a message object of type '<TrexOperation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'op) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'token) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrexOperation>) istream)
  "Deserializes a message object of type '<TrexOperation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'op) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'token) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrexOperation>)))
  "Returns string type for a message object of type '<TrexOperation>"
  "imc_ros_msgs/TrexOperation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrexOperation)))
  "Returns string type for a message object of type 'TrexOperation"
  "imc_ros_msgs/TrexOperation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrexOperation>)))
  "Returns md5sum for a message object of type '<TrexOperation>"
  "24bad02d3c88803cb1d34a5fa7e51b9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrexOperation)))
  "Returns md5sum for a message object of type 'TrexOperation"
  "24bad02d3c88803cb1d34a5fa7e51b9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrexOperation>)))
  "Returns full string definition for message of type '<TrexOperation>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 op #see IMC.xml~%std_msgs/String goal_id~%imc_ros_msgs/TrexToken token~%~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: imc_ros_msgs/TrexToken~%imc_ros_msgs/Header header~%std_msgs/String timeline~%std_msgs/String predicate~%imc_ros_msgs/TrexAttribute attributes~%~%================================================================================~%MSG: imc_ros_msgs/TrexAttribute~%imc_ros_msgs/Header header~%std_msgs/String name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrexOperation)))
  "Returns full string definition for message of type 'TrexOperation"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 op #see IMC.xml~%std_msgs/String goal_id~%imc_ros_msgs/TrexToken token~%~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: imc_ros_msgs/TrexToken~%imc_ros_msgs/Header header~%std_msgs/String timeline~%std_msgs/String predicate~%imc_ros_msgs/TrexAttribute attributes~%~%================================================================================~%MSG: imc_ros_msgs/TrexAttribute~%imc_ros_msgs/Header header~%std_msgs/String name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrexOperation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'op))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'token))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrexOperation>))
  "Converts a ROS message object to a list"
  (cl:list 'TrexOperation
    (cl:cons ':header (header msg))
    (cl:cons ':op (op msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':token (token msg))
))
