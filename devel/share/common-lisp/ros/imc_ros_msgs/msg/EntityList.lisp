; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude EntityList.msg.html

(cl:defclass <EntityList> (roslisp-msg-protocol:ros-message)
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
   (list
    :reader list
    :initarg :list
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass EntityList (<EntityList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EntityList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EntityList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<EntityList> is deprecated: use imc_ros_msgs-msg:EntityList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EntityList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <EntityList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:op-val is deprecated.  Use imc_ros_msgs-msg:op instead.")
  (op m))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <EntityList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:list-val is deprecated.  Use imc_ros_msgs-msg:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EntityList>) ostream)
  "Serializes a message object of type '<EntityList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'op) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'list) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EntityList>) istream)
  "Deserializes a message object of type '<EntityList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'op) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'list) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EntityList>)))
  "Returns string type for a message object of type '<EntityList>"
  "imc_ros_msgs/EntityList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EntityList)))
  "Returns string type for a message object of type 'EntityList"
  "imc_ros_msgs/EntityList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EntityList>)))
  "Returns md5sum for a message object of type '<EntityList>"
  "87fa9b0ef1d26b4979b5dfd0dab6d64e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EntityList)))
  "Returns md5sum for a message object of type 'EntityList"
  "87fa9b0ef1d26b4979b5dfd0dab6d64e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EntityList>)))
  "Returns full string definition for message of type '<EntityList>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 op~%std_msgs/String list~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EntityList)))
  "Returns full string definition for message of type 'EntityList"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 op~%std_msgs/String list~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EntityList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'op))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'list))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EntityList>))
  "Converts a ROS message object to a list"
  (cl:list 'EntityList
    (cl:cons ':header (header msg))
    (cl:cons ':op (op msg))
    (cl:cons ':list (list msg))
))
