; Auto-generated. Do not edit!


(cl:in-package minerva2_iface-msg)


;//! \htmlinclude Forcevector.msg.html

(cl:defclass <Forcevector> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fx
    :reader fx
    :initarg :fx
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (fy
    :reader fy
    :initarg :fy
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (fz
    :reader fz
    :initarg :fz
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (froll
    :reader froll
    :initarg :froll
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (fpitch
    :reader fpitch
    :initarg :fpitch
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (fyaw
    :reader fyaw
    :initarg :fyaw
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass Forcevector (<Forcevector>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Forcevector>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Forcevector)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name minerva2_iface-msg:<Forcevector> is deprecated: use minerva2_iface-msg:Forcevector instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Forcevector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:header-val is deprecated.  Use minerva2_iface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fx-val :lambda-list '(m))
(cl:defmethod fx-val ((m <Forcevector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:fx-val is deprecated.  Use minerva2_iface-msg:fx instead.")
  (fx m))

(cl:ensure-generic-function 'fy-val :lambda-list '(m))
(cl:defmethod fy-val ((m <Forcevector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:fy-val is deprecated.  Use minerva2_iface-msg:fy instead.")
  (fy m))

(cl:ensure-generic-function 'fz-val :lambda-list '(m))
(cl:defmethod fz-val ((m <Forcevector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:fz-val is deprecated.  Use minerva2_iface-msg:fz instead.")
  (fz m))

(cl:ensure-generic-function 'froll-val :lambda-list '(m))
(cl:defmethod froll-val ((m <Forcevector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:froll-val is deprecated.  Use minerva2_iface-msg:froll instead.")
  (froll m))

(cl:ensure-generic-function 'fpitch-val :lambda-list '(m))
(cl:defmethod fpitch-val ((m <Forcevector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:fpitch-val is deprecated.  Use minerva2_iface-msg:fpitch instead.")
  (fpitch m))

(cl:ensure-generic-function 'fyaw-val :lambda-list '(m))
(cl:defmethod fyaw-val ((m <Forcevector>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader minerva2_iface-msg:fyaw-val is deprecated.  Use minerva2_iface-msg:fyaw instead.")
  (fyaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Forcevector>) ostream)
  "Serializes a message object of type '<Forcevector>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fx) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fz) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'froll) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fpitch) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fyaw) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Forcevector>) istream)
  "Deserializes a message object of type '<Forcevector>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fx) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fz) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'froll) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fpitch) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fyaw) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Forcevector>)))
  "Returns string type for a message object of type '<Forcevector>"
  "minerva2_iface/Forcevector")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Forcevector)))
  "Returns string type for a message object of type 'Forcevector"
  "minerva2_iface/Forcevector")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Forcevector>)))
  "Returns md5sum for a message object of type '<Forcevector>"
  "0e5bbf4247b7e2801d320d0defabc11e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Forcevector)))
  "Returns md5sum for a message object of type 'Forcevector"
  "0e5bbf4247b7e2801d320d0defabc11e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Forcevector>)))
  "Returns full string definition for message of type '<Forcevector>"
  (cl:format cl:nil "Header header~%std_msgs/Float32 fx~%std_msgs/Float32 fy~%std_msgs/Float32 fz~%std_msgs/Float32 froll~%std_msgs/Float32 fpitch~%std_msgs/Float32 fyaw~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Forcevector)))
  "Returns full string definition for message of type 'Forcevector"
  (cl:format cl:nil "Header header~%std_msgs/Float32 fx~%std_msgs/Float32 fy~%std_msgs/Float32 fz~%std_msgs/Float32 froll~%std_msgs/Float32 fpitch~%std_msgs/Float32 fyaw~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Forcevector>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fx))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fz))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'froll))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fpitch))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fyaw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Forcevector>))
  "Converts a ROS message object to a list"
  (cl:list 'Forcevector
    (cl:cons ':header (header msg))
    (cl:cons ':fx (fx msg))
    (cl:cons ':fy (fy msg))
    (cl:cons ':fz (fz msg))
    (cl:cons ':froll (froll msg))
    (cl:cons ':fpitch (fpitch msg))
    (cl:cons ':fyaw (fyaw msg))
))
