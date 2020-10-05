; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude IridiumMsgTx.msg.html

(cl:defclass <IridiumMsgTx> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (req_id
    :reader req_id
    :initarg :req_id
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (ttl
    :reader ttl
    :initarg :ttl
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (data
    :reader data
    :initarg :data
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass IridiumMsgTx (<IridiumMsgTx>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IridiumMsgTx>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IridiumMsgTx)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<IridiumMsgTx> is deprecated: use imc_ros_msgs-msg:IridiumMsgTx instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IridiumMsgTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'req_id-val :lambda-list '(m))
(cl:defmethod req_id-val ((m <IridiumMsgTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:req_id-val is deprecated.  Use imc_ros_msgs-msg:req_id instead.")
  (req_id m))

(cl:ensure-generic-function 'ttl-val :lambda-list '(m))
(cl:defmethod ttl-val ((m <IridiumMsgTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:ttl-val is deprecated.  Use imc_ros_msgs-msg:ttl instead.")
  (ttl m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <IridiumMsgTx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:data-val is deprecated.  Use imc_ros_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IridiumMsgTx>) ostream)
  "Serializes a message object of type '<IridiumMsgTx>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'req_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ttl) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IridiumMsgTx>) istream)
  "Deserializes a message object of type '<IridiumMsgTx>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'req_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ttl) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IridiumMsgTx>)))
  "Returns string type for a message object of type '<IridiumMsgTx>"
  "imc_ros_msgs/IridiumMsgTx")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IridiumMsgTx)))
  "Returns string type for a message object of type 'IridiumMsgTx"
  "imc_ros_msgs/IridiumMsgTx")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IridiumMsgTx>)))
  "Returns md5sum for a message object of type '<IridiumMsgTx>"
  "031f05279239a43f0254b768544e3ffd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IridiumMsgTx)))
  "Returns md5sum for a message object of type 'IridiumMsgTx"
  "031f05279239a43f0254b768544e3ffd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IridiumMsgTx>)))
  "Returns full string definition for message of type '<IridiumMsgTx>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt16 req_id~%std_msgs/UInt16 ttl~%std_msgs/String data~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IridiumMsgTx)))
  "Returns full string definition for message of type 'IridiumMsgTx"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt16 req_id~%std_msgs/UInt16 ttl~%std_msgs/String data~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IridiumMsgTx>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'req_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ttl))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IridiumMsgTx>))
  "Converts a ROS message object to a list"
  (cl:list 'IridiumMsgTx
    (cl:cons ':header (header msg))
    (cl:cons ':req_id (req_id msg))
    (cl:cons ':ttl (ttl msg))
    (cl:cons ':data (data msg))
))
