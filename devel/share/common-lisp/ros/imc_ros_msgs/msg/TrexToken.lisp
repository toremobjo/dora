; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude TrexToken.msg.html

(cl:defclass <TrexToken> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (timeline
    :reader timeline
    :initarg :timeline
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (predicate
    :reader predicate
    :initarg :predicate
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (attributes
    :reader attributes
    :initarg :attributes
    :type imc_ros_msgs-msg:TrexAttribute
    :initform (cl:make-instance 'imc_ros_msgs-msg:TrexAttribute)))
)

(cl:defclass TrexToken (<TrexToken>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrexToken>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrexToken)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<TrexToken> is deprecated: use imc_ros_msgs-msg:TrexToken instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrexToken>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timeline-val :lambda-list '(m))
(cl:defmethod timeline-val ((m <TrexToken>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:timeline-val is deprecated.  Use imc_ros_msgs-msg:timeline instead.")
  (timeline m))

(cl:ensure-generic-function 'predicate-val :lambda-list '(m))
(cl:defmethod predicate-val ((m <TrexToken>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:predicate-val is deprecated.  Use imc_ros_msgs-msg:predicate instead.")
  (predicate m))

(cl:ensure-generic-function 'attributes-val :lambda-list '(m))
(cl:defmethod attributes-val ((m <TrexToken>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:attributes-val is deprecated.  Use imc_ros_msgs-msg:attributes instead.")
  (attributes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrexToken>) ostream)
  "Serializes a message object of type '<TrexToken>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timeline) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'predicate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attributes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrexToken>) istream)
  "Deserializes a message object of type '<TrexToken>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timeline) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'predicate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attributes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrexToken>)))
  "Returns string type for a message object of type '<TrexToken>"
  "imc_ros_msgs/TrexToken")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrexToken)))
  "Returns string type for a message object of type 'TrexToken"
  "imc_ros_msgs/TrexToken")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrexToken>)))
  "Returns md5sum for a message object of type '<TrexToken>"
  "ce094818c75572189a21e2577c1581bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrexToken)))
  "Returns md5sum for a message object of type 'TrexToken"
  "ce094818c75572189a21e2577c1581bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrexToken>)))
  "Returns full string definition for message of type '<TrexToken>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/String timeline~%std_msgs/String predicate~%imc_ros_msgs/TrexAttribute attributes~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: imc_ros_msgs/TrexAttribute~%imc_ros_msgs/Header header~%std_msgs/String name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrexToken)))
  "Returns full string definition for message of type 'TrexToken"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/String timeline~%std_msgs/String predicate~%imc_ros_msgs/TrexAttribute attributes~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: imc_ros_msgs/TrexAttribute~%imc_ros_msgs/Header header~%std_msgs/String name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrexToken>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timeline))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'predicate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attributes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrexToken>))
  "Converts a ROS message object to a list"
  (cl:list 'TrexToken
    (cl:cons ':header (header msg))
    (cl:cons ':timeline (timeline msg))
    (cl:cons ':predicate (predicate msg))
    (cl:cons ':attributes (attributes msg))
))
