; Auto-generated. Do not edit!


(cl:in-package minerva2_iface-msg)


;//! \htmlinclude Navipac.msg.html

(cl:defclass <Navipac> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (north
    :reader north
    :initarg :north
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (east
    :reader east
    :initarg :east
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (down
    :reader down
    :initarg :down
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (u
    :reader u
    :initarg :u
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (v
    :reader v
    :initarg :v
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (w
    :reader w
    :initarg :w
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Navipac (<Navipac>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Navipac>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Navipac)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minerva2_iface-msg:<Navipac> is deprecated: use minerva2_iface-msg:Navipac instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Navipac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:header-val is deprecated.  Use minerva2_iface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'north-val :lambda-list '(m))
(cl:defmethod north-val ((m <Navipac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:north-val is deprecated.  Use minerva2_iface-msg:north instead.")
  (north m))

(cl:ensure-generic-function 'east-val :lambda-list '(m))
(cl:defmethod east-val ((m <Navipac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:east-val is deprecated.  Use minerva2_iface-msg:east instead.")
  (east m))

(cl:ensure-generic-function 'down-val :lambda-list '(m))
(cl:defmethod down-val ((m <Navipac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:down-val is deprecated.  Use minerva2_iface-msg:down instead.")
  (down m))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <Navipac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:u-val is deprecated.  Use minerva2_iface-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <Navipac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:v-val is deprecated.  Use minerva2_iface-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <Navipac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:w-val is deprecated.  Use minerva2_iface-msg:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Navipac>) ostream)
  "Serializes a message object of type '<Navipac>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'north) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'east) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'down) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'u) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'w) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Navipac>) istream)
  "Deserializes a message object of type '<Navipac>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'north) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'east) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'down) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'u) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'w) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Navipac>)))
  "Returns string type for a message object of type '<Navipac>"
  "minerva2_iface/Navipac")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Navipac)))
  "Returns string type for a message object of type 'Navipac"
  "minerva2_iface/Navipac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Navipac>)))
  "Returns md5sum for a message object of type '<Navipac>"
  "526c3ab86598af434d315ff08e79faeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Navipac)))
  "Returns md5sum for a message object of type 'Navipac"
  "526c3ab86598af434d315ff08e79faeb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Navipac>)))
  "Returns full string definition for message of type '<Navipac>"
  (cl:format cl:nil "Header header~%std_msgs/Float32 north~%std_msgs/Float32 east~%std_msgs/Float32 down~%std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 w ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Navipac)))
  "Returns full string definition for message of type 'Navipac"
  (cl:format cl:nil "Header header~%std_msgs/Float32 north~%std_msgs/Float32 east~%std_msgs/Float32 down~%std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 w ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Navipac>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'north))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'east))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'down))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'u))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'w))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Navipac>))
  "Converts a ROS message object to a list"
  (cl:list 'Navipac
    (cl:cons ':header (header msg))
    (cl:cons ':north (north msg))
    (cl:cons ':east (east msg))
    (cl:cons ':down (down msg))
    (cl:cons ':u (u msg))
    (cl:cons ':v (v msg))
    (cl:cons ':w (w msg))
))
