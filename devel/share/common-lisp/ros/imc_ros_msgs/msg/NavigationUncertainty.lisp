; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude NavigationUncertainty.msg.html

(cl:defclass <NavigationUncertainty> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (x
    :reader x
    :initarg :x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (y
    :reader y
    :initarg :y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (z
    :reader z
    :initarg :z
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (phi
    :reader phi
    :initarg :phi
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (theta
    :reader theta
    :initarg :theta
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (psi
    :reader psi
    :initarg :psi
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (p
    :reader p
    :initarg :p
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (q
    :reader q
    :initarg :q
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (r
    :reader r
    :initarg :r
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
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (bias_psi
    :reader bias_psi
    :initarg :bias_psi
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (bias_r
    :reader bias_r
    :initarg :bias_r
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass NavigationUncertainty (<NavigationUncertainty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationUncertainty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationUncertainty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<NavigationUncertainty> is deprecated: use imc_ros_msgs-msg:NavigationUncertainty instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:x-val is deprecated.  Use imc_ros_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:y-val is deprecated.  Use imc_ros_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:z-val is deprecated.  Use imc_ros_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:phi-val is deprecated.  Use imc_ros_msgs-msg:phi instead.")
  (phi m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:theta-val is deprecated.  Use imc_ros_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'psi-val :lambda-list '(m))
(cl:defmethod psi-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:psi-val is deprecated.  Use imc_ros_msgs-msg:psi instead.")
  (psi m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:p-val is deprecated.  Use imc_ros_msgs-msg:p instead.")
  (p m))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:q-val is deprecated.  Use imc_ros_msgs-msg:q instead.")
  (q m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:r-val is deprecated.  Use imc_ros_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:u-val is deprecated.  Use imc_ros_msgs-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:v-val is deprecated.  Use imc_ros_msgs-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:w-val is deprecated.  Use imc_ros_msgs-msg:w instead.")
  (w m))

(cl:ensure-generic-function 'bias_psi-val :lambda-list '(m))
(cl:defmethod bias_psi-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:bias_psi-val is deprecated.  Use imc_ros_msgs-msg:bias_psi instead.")
  (bias_psi m))

(cl:ensure-generic-function 'bias_r-val :lambda-list '(m))
(cl:defmethod bias_r-val ((m <NavigationUncertainty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:bias_r-val is deprecated.  Use imc_ros_msgs-msg:bias_r instead.")
  (bias_r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationUncertainty>) ostream)
  "Serializes a message object of type '<NavigationUncertainty>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'z) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'phi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'theta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'psi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'u) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'w) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bias_psi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bias_r) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationUncertainty>) istream)
  "Deserializes a message object of type '<NavigationUncertainty>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'z) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'phi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'theta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'psi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'u) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'w) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias_psi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias_r) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationUncertainty>)))
  "Returns string type for a message object of type '<NavigationUncertainty>"
  "imc_ros_msgs/NavigationUncertainty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationUncertainty)))
  "Returns string type for a message object of type 'NavigationUncertainty"
  "imc_ros_msgs/NavigationUncertainty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationUncertainty>)))
  "Returns md5sum for a message object of type '<NavigationUncertainty>"
  "0cbfef2b043880a51dfb47b480a16c78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationUncertainty)))
  "Returns md5sum for a message object of type 'NavigationUncertainty"
  "0cbfef2b043880a51dfb47b480a16c78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationUncertainty>)))
  "Returns full string definition for message of type '<NavigationUncertainty>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float32 x~%std_msgs/Float32 y~%std_msgs/Float32 z~%std_msgs/Float32 phi~%std_msgs/Float32 theta~%std_msgs/Float32 psi~%std_msgs/Float32 p~%std_msgs/Float32 q~%std_msgs/Float32 r~%std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 w~%std_msgs/Float32 bias_psi~%std_msgs/Float32 bias_r~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationUncertainty)))
  "Returns full string definition for message of type 'NavigationUncertainty"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float32 x~%std_msgs/Float32 y~%std_msgs/Float32 z~%std_msgs/Float32 phi~%std_msgs/Float32 theta~%std_msgs/Float32 psi~%std_msgs/Float32 p~%std_msgs/Float32 q~%std_msgs/Float32 r~%std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 w~%std_msgs/Float32 bias_psi~%std_msgs/Float32 bias_r~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationUncertainty>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'z))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'phi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'theta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'psi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'u))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'w))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias_psi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias_r))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationUncertainty>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationUncertainty
    (cl:cons ':header (header msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':phi (phi msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':psi (psi msg))
    (cl:cons ':p (p msg))
    (cl:cons ':q (q msg))
    (cl:cons ':r (r msg))
    (cl:cons ':u (u msg))
    (cl:cons ':v (v msg))
    (cl:cons ':w (w msg))
    (cl:cons ':bias_psi (bias_psi msg))
    (cl:cons ':bias_r (bias_r msg))
))
