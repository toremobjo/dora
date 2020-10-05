; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude Header.msg.html

(cl:defclass <Header> (roslisp-msg-protocol:ros-message)
  ((rosheader
    :reader rosheader
    :initarg :rosheader
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sync
    :reader sync
    :initarg :sync
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (mgid
    :reader mgid
    :initarg :mgid
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (size
    :reader size
    :initarg :size
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (src
    :reader src
    :initarg :src
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (src_ent
    :reader src_ent
    :initarg :src_ent
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (dst
    :reader dst
    :initarg :dst
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (dst_ent
    :reader dst_ent
    :initarg :dst_ent
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass Header (<Header>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Header>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Header)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<Header> is deprecated: use imc_ros_msgs-msg:Header instead.")))

(cl:ensure-generic-function 'rosheader-val :lambda-list '(m))
(cl:defmethod rosheader-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:rosheader-val is deprecated.  Use imc_ros_msgs-msg:rosheader instead.")
  (rosheader m))

(cl:ensure-generic-function 'sync-val :lambda-list '(m))
(cl:defmethod sync-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:sync-val is deprecated.  Use imc_ros_msgs-msg:sync instead.")
  (sync m))

(cl:ensure-generic-function 'mgid-val :lambda-list '(m))
(cl:defmethod mgid-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:mgid-val is deprecated.  Use imc_ros_msgs-msg:mgid instead.")
  (mgid m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:size-val is deprecated.  Use imc_ros_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:timestamp-val is deprecated.  Use imc_ros_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'src-val :lambda-list '(m))
(cl:defmethod src-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:src-val is deprecated.  Use imc_ros_msgs-msg:src instead.")
  (src m))

(cl:ensure-generic-function 'src_ent-val :lambda-list '(m))
(cl:defmethod src_ent-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:src_ent-val is deprecated.  Use imc_ros_msgs-msg:src_ent instead.")
  (src_ent m))

(cl:ensure-generic-function 'dst-val :lambda-list '(m))
(cl:defmethod dst-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:dst-val is deprecated.  Use imc_ros_msgs-msg:dst instead.")
  (dst m))

(cl:ensure-generic-function 'dst_ent-val :lambda-list '(m))
(cl:defmethod dst_ent-val ((m <Header>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:dst_ent-val is deprecated.  Use imc_ros_msgs-msg:dst_ent instead.")
  (dst_ent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Header>) ostream)
  "Serializes a message object of type '<Header>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rosheader) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sync) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mgid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'src) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'src_ent) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dst) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dst_ent) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Header>) istream)
  "Deserializes a message object of type '<Header>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rosheader) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sync) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mgid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'src) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'src_ent) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dst) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dst_ent) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Header>)))
  "Returns string type for a message object of type '<Header>"
  "imc_ros_msgs/Header")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Header)))
  "Returns string type for a message object of type 'Header"
  "imc_ros_msgs/Header")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Header>)))
  "Returns md5sum for a message object of type '<Header>"
  "f599b646bbd90db766bafb08706c85c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Header)))
  "Returns md5sum for a message object of type 'Header"
  "f599b646bbd90db766bafb08706c85c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Header>)))
  "Returns full string definition for message of type '<Header>"
  (cl:format cl:nil "std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Header)))
  "Returns full string definition for message of type 'Header"
  (cl:format cl:nil "std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Header>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rosheader))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sync))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mgid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'src))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'src_ent))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dst))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dst_ent))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Header>))
  "Converts a ROS message object to a list"
  (cl:list 'Header
    (cl:cons ':rosheader (rosheader msg))
    (cl:cons ':sync (sync msg))
    (cl:cons ':mgid (mgid msg))
    (cl:cons ':size (size msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':src (src msg))
    (cl:cons ':src_ent (src_ent msg))
    (cl:cons ':dst (dst msg))
    (cl:cons ':dst_ent (dst_ent msg))
))
