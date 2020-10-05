; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude FollowRefState.msg.html

(cl:defclass <FollowRefState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (control_ent
    :reader control_ent
    :initarg :control_ent
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (reference
    :reader reference
    :initarg :reference
    :type imc_ros_msgs-msg:Reference
    :initform (cl:make-instance 'imc_ros_msgs-msg:Reference))
   (state
    :reader state
    :initarg :state
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (plroximity
    :reader plroximity
    :initarg :plroximity
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass FollowRefState (<FollowRefState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowRefState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowRefState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<FollowRefState> is deprecated: use imc_ros_msgs-msg:FollowRefState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FollowRefState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control_ent-val :lambda-list '(m))
(cl:defmethod control_ent-val ((m <FollowRefState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:control_ent-val is deprecated.  Use imc_ros_msgs-msg:control_ent instead.")
  (control_ent m))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <FollowRefState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:reference-val is deprecated.  Use imc_ros_msgs-msg:reference instead.")
  (reference m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <FollowRefState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:state-val is deprecated.  Use imc_ros_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'plroximity-val :lambda-list '(m))
(cl:defmethod plroximity-val ((m <FollowRefState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:plroximity-val is deprecated.  Use imc_ros_msgs-msg:plroximity instead.")
  (plroximity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowRefState>) ostream)
  "Serializes a message object of type '<FollowRefState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'control_ent) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plroximity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowRefState>) istream)
  "Deserializes a message object of type '<FollowRefState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'control_ent) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plroximity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowRefState>)))
  "Returns string type for a message object of type '<FollowRefState>"
  "imc_ros_msgs/FollowRefState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowRefState)))
  "Returns string type for a message object of type 'FollowRefState"
  "imc_ros_msgs/FollowRefState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowRefState>)))
  "Returns md5sum for a message object of type '<FollowRefState>"
  "726407b2cfb995059683aa882a05454a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowRefState)))
  "Returns md5sum for a message object of type 'FollowRefState"
  "726407b2cfb995059683aa882a05454a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowRefState>)))
  "Returns full string definition for message of type '<FollowRefState>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 control_ent~%imc_ros_msgs/Reference reference~%std_msgs/UInt8 state             # 1=Wait 2=goto 3=loiter 4=hover 5=elevator 6=timeout~%std_msgs/UInt8 plroximity # 0x01=FAR 0x02=XY_NEAR 0x03=Z_NEAR 0x04=XY_UNREACHABLE 0x05=	Z_UNREACHABLE~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: imc_ros_msgs/Reference~%imc_ros_msgs/Header header~%std_msgs/UInt8 flags ~%#      //! Use Location Reference.~%#      FLAG_LOCATION = 0x01,~%#      //! Use Speed Reference.~%#      FLAG_SPEED = 0x02,~%#      //! Use Z Reference.~%#      FLAG_Z = 0x04,~%#      //! Use Radius Reference.~%#      FLAG_RADIUS = 0x08,~%#      //! Use this Reference as Start Position for PathControler.~%#      FLAG_START_POINT = 0x10,~%#      //! Use Current Position as Start Position for PathControler.~%#      FLAG_DIRECT = 0x20,~%#      //! Flag Maneuver Completion.~%#      FLAG_MANDONE = 0x80~%imc_ros_msgs/DesiredSpeed speed~%imc_ros_msgs/DesiredZ z~%std_msgs/Float64 lat ~%std_msgs/Float64 lon~%std_msgs/Float32 radius~%~%================================================================================~%MSG: imc_ros_msgs/DesiredSpeed~%imc_ros_msgs/Header header~%std_msgs/Float64 value~%std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml~%~%================================================================================~%MSG: imc_ros_msgs/DesiredZ~%imc_ros_msgs/Header header~%std_msgs/Float32 value #unit [m]~%std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowRefState)))
  "Returns full string definition for message of type 'FollowRefState"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 control_ent~%imc_ros_msgs/Reference reference~%std_msgs/UInt8 state             # 1=Wait 2=goto 3=loiter 4=hover 5=elevator 6=timeout~%std_msgs/UInt8 plroximity # 0x01=FAR 0x02=XY_NEAR 0x03=Z_NEAR 0x04=XY_UNREACHABLE 0x05=	Z_UNREACHABLE~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: imc_ros_msgs/Reference~%imc_ros_msgs/Header header~%std_msgs/UInt8 flags ~%#      //! Use Location Reference.~%#      FLAG_LOCATION = 0x01,~%#      //! Use Speed Reference.~%#      FLAG_SPEED = 0x02,~%#      //! Use Z Reference.~%#      FLAG_Z = 0x04,~%#      //! Use Radius Reference.~%#      FLAG_RADIUS = 0x08,~%#      //! Use this Reference as Start Position for PathControler.~%#      FLAG_START_POINT = 0x10,~%#      //! Use Current Position as Start Position for PathControler.~%#      FLAG_DIRECT = 0x20,~%#      //! Flag Maneuver Completion.~%#      FLAG_MANDONE = 0x80~%imc_ros_msgs/DesiredSpeed speed~%imc_ros_msgs/DesiredZ z~%std_msgs/Float64 lat ~%std_msgs/Float64 lon~%std_msgs/Float32 radius~%~%================================================================================~%MSG: imc_ros_msgs/DesiredSpeed~%imc_ros_msgs/Header header~%std_msgs/Float64 value~%std_msgs/UInt8 speed_units #Enumerated list, see IMC.xml~%~%================================================================================~%MSG: imc_ros_msgs/DesiredZ~%imc_ros_msgs/Header header~%std_msgs/Float32 value #unit [m]~%std_msgs/UInt8 z_units # depth/alt, see IMC.xml 0=none 1=depth 2=alt 3=height~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowRefState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'control_ent))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plroximity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowRefState>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowRefState
    (cl:cons ':header (header msg))
    (cl:cons ':control_ent (control_ent msg))
    (cl:cons ':reference (reference msg))
    (cl:cons ':state (state msg))
    (cl:cons ':plroximity (plroximity msg))
))
