; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude FollowReference.msg.html

(cl:defclass <FollowReference> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (control_src
    :reader control_src
    :initarg :control_src
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (control_ent
    :reader control_ent
    :initarg :control_ent
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (timeout
    :reader timeout
    :initarg :timeout
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (loiter_radius
    :reader loiter_radius
    :initarg :loiter_radius
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (altitude_interval
    :reader altitude_interval
    :initarg :altitude_interval
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass FollowReference (<FollowReference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowReference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowReference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<FollowReference> is deprecated: use imc_ros_msgs-msg:FollowReference instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FollowReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control_src-val :lambda-list '(m))
(cl:defmethod control_src-val ((m <FollowReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:control_src-val is deprecated.  Use imc_ros_msgs-msg:control_src instead.")
  (control_src m))

(cl:ensure-generic-function 'control_ent-val :lambda-list '(m))
(cl:defmethod control_ent-val ((m <FollowReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:control_ent-val is deprecated.  Use imc_ros_msgs-msg:control_ent instead.")
  (control_ent m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <FollowReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:timeout-val is deprecated.  Use imc_ros_msgs-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'loiter_radius-val :lambda-list '(m))
(cl:defmethod loiter_radius-val ((m <FollowReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:loiter_radius-val is deprecated.  Use imc_ros_msgs-msg:loiter_radius instead.")
  (loiter_radius m))

(cl:ensure-generic-function 'altitude_interval-val :lambda-list '(m))
(cl:defmethod altitude_interval-val ((m <FollowReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:altitude_interval-val is deprecated.  Use imc_ros_msgs-msg:altitude_interval instead.")
  (altitude_interval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowReference>) ostream)
  "Serializes a message object of type '<FollowReference>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control_src) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control_ent) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timeout) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'loiter_radius) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'altitude_interval) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowReference>) istream)
  "Deserializes a message object of type '<FollowReference>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control_src) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control_ent) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timeout) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'loiter_radius) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'altitude_interval) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowReference>)))
  "Returns string type for a message object of type '<FollowReference>"
  "imc_ros_msgs/FollowReference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowReference)))
  "Returns string type for a message object of type 'FollowReference"
  "imc_ros_msgs/FollowReference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowReference>)))
  "Returns md5sum for a message object of type '<FollowReference>"
  "e2e2166f80c57b484155a0a8b3e650ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowReference)))
  "Returns md5sum for a message object of type 'FollowReference"
  "e2e2166f80c57b484155a0a8b3e650ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowReference>)))
  "Returns full string definition for message of type '<FollowReference>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt16 control_src~%std_msgs/UInt8 control_ent~%std_msgs/Float32 timeout~%std_msgs/Float32 loiter_radius~%std_msgs/Float32 altitude_interval~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowReference)))
  "Returns full string definition for message of type 'FollowReference"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt16 control_src~%std_msgs/UInt8 control_ent~%std_msgs/Float32 timeout~%std_msgs/Float32 loiter_radius~%std_msgs/Float32 altitude_interval~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowReference>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control_src))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control_ent))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timeout))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'loiter_radius))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'altitude_interval))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowReference>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowReference
    (cl:cons ':header (header msg))
    (cl:cons ':control_src (control_src msg))
    (cl:cons ':control_ent (control_ent msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':loiter_radius (loiter_radius msg))
    (cl:cons ':altitude_interval (altitude_interval msg))
))
