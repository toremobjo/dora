; Auto-generated. Do not edit!


(cl:in-package minerva2_iface-msg)


;//! \htmlinclude Mtipro.msg.html

(cl:defclass <Mtipro> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (roll
    :reader roll
    :initarg :roll
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (pitch
    :reader pitch
    :initarg :pitch
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (yaw
    :reader yaw
    :initarg :yaw
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Mtipro (<Mtipro>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mtipro>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mtipro)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minerva2_iface-msg:<Mtipro> is deprecated: use minerva2_iface-msg:Mtipro instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Mtipro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:header-val is deprecated.  Use minerva2_iface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Mtipro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:roll-val is deprecated.  Use minerva2_iface-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Mtipro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:pitch-val is deprecated.  Use minerva2_iface-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Mtipro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:yaw-val is deprecated.  Use minerva2_iface-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mtipro>) ostream)
  "Serializes a message object of type '<Mtipro>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roll) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pitch) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'yaw) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mtipro>) istream)
  "Deserializes a message object of type '<Mtipro>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roll) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pitch) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'yaw) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mtipro>)))
  "Returns string type for a message object of type '<Mtipro>"
  "minerva2_iface/Mtipro")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mtipro)))
  "Returns string type for a message object of type 'Mtipro"
  "minerva2_iface/Mtipro")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mtipro>)))
  "Returns md5sum for a message object of type '<Mtipro>"
  "ecf5f4cc2cc1e3431a655ba24a6201ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mtipro)))
  "Returns md5sum for a message object of type 'Mtipro"
  "ecf5f4cc2cc1e3431a655ba24a6201ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mtipro>)))
  "Returns full string definition for message of type '<Mtipro>"
  (cl:format cl:nil "Header header~%std_msgs/Float32 roll~%std_msgs/Float32 pitch~%std_msgs/Float32 yaw~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mtipro)))
  "Returns full string definition for message of type 'Mtipro"
  (cl:format cl:nil "Header header~%std_msgs/Float32 roll~%std_msgs/Float32 pitch~%std_msgs/Float32 yaw~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mtipro>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roll))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pitch))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'yaw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mtipro>))
  "Converts a ROS message object to a list"
  (cl:list 'Mtipro
    (cl:cons ':header (header msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
))
