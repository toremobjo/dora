; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude PlanControlState.msg.html

(cl:defclass <PlanControlState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (plan_id
    :reader plan_id
    :initarg :plan_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (plan_eta
    :reader plan_eta
    :initarg :plan_eta
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (plan_progress
    :reader plan_progress
    :initarg :plan_progress
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (man_id
    :reader man_id
    :initarg :man_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (man_type
    :reader man_type
    :initarg :man_type
    :type std_msgs-msg:UInt16
    :initform (cl:make-instance 'std_msgs-msg:UInt16))
   (man_eta
    :reader man_eta
    :initarg :man_eta
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (last_outcome
    :reader last_outcome
    :initarg :last_outcome
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass PlanControlState (<PlanControlState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanControlState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanControlState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<PlanControlState> is deprecated: use imc_ros_msgs-msg:PlanControlState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:state-val is deprecated.  Use imc_ros_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'plan_id-val :lambda-list '(m))
(cl:defmethod plan_id-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:plan_id-val is deprecated.  Use imc_ros_msgs-msg:plan_id instead.")
  (plan_id m))

(cl:ensure-generic-function 'plan_eta-val :lambda-list '(m))
(cl:defmethod plan_eta-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:plan_eta-val is deprecated.  Use imc_ros_msgs-msg:plan_eta instead.")
  (plan_eta m))

(cl:ensure-generic-function 'plan_progress-val :lambda-list '(m))
(cl:defmethod plan_progress-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:plan_progress-val is deprecated.  Use imc_ros_msgs-msg:plan_progress instead.")
  (plan_progress m))

(cl:ensure-generic-function 'man_id-val :lambda-list '(m))
(cl:defmethod man_id-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:man_id-val is deprecated.  Use imc_ros_msgs-msg:man_id instead.")
  (man_id m))

(cl:ensure-generic-function 'man_type-val :lambda-list '(m))
(cl:defmethod man_type-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:man_type-val is deprecated.  Use imc_ros_msgs-msg:man_type instead.")
  (man_type m))

(cl:ensure-generic-function 'man_eta-val :lambda-list '(m))
(cl:defmethod man_eta-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:man_eta-val is deprecated.  Use imc_ros_msgs-msg:man_eta instead.")
  (man_eta m))

(cl:ensure-generic-function 'last_outcome-val :lambda-list '(m))
(cl:defmethod last_outcome-val ((m <PlanControlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:last_outcome-val is deprecated.  Use imc_ros_msgs-msg:last_outcome instead.")
  (last_outcome m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanControlState>) ostream)
  "Serializes a message object of type '<PlanControlState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan_eta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan_progress) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'man_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'man_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'man_eta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_outcome) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanControlState>) istream)
  "Deserializes a message object of type '<PlanControlState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan_eta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan_progress) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'man_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'man_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'man_eta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_outcome) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanControlState>)))
  "Returns string type for a message object of type '<PlanControlState>"
  "imc_ros_msgs/PlanControlState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanControlState)))
  "Returns string type for a message object of type 'PlanControlState"
  "imc_ros_msgs/PlanControlState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanControlState>)))
  "Returns md5sum for a message object of type '<PlanControlState>"
  "37c774ecf5519b9a486a42a0755de1f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanControlState)))
  "Returns md5sum for a message object of type 'PlanControlState"
  "37c774ecf5519b9a486a42a0755de1f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanControlState>)))
  "Returns full string definition for message of type '<PlanControlState>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 state~%std_msgs/String plan_id~%std_msgs/Int32 plan_eta~%std_msgs/Float32 plan_progress~%std_msgs/String man_id~%std_msgs/UInt16 man_type~%std_msgs/Int32 man_eta~%std_msgs/UInt8 last_outcome #See IMC.xml~%~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanControlState)))
  "Returns full string definition for message of type 'PlanControlState"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/UInt8 state~%std_msgs/String plan_id~%std_msgs/Int32 plan_eta~%std_msgs/Float32 plan_progress~%std_msgs/String man_id~%std_msgs/UInt16 man_type~%std_msgs/Int32 man_eta~%std_msgs/UInt8 last_outcome #See IMC.xml~%~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanControlState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan_eta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan_progress))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'man_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'man_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'man_eta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_outcome))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanControlState>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanControlState
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':plan_id (plan_id msg))
    (cl:cons ':plan_eta (plan_eta msg))
    (cl:cons ':plan_progress (plan_progress msg))
    (cl:cons ':man_id (man_id msg))
    (cl:cons ':man_type (man_type msg))
    (cl:cons ':man_eta (man_eta msg))
    (cl:cons ':last_outcome (last_outcome msg))
))
