; Auto-generated. Do not edit!


(cl:in-package imc_ros_msgs-msg)


;//! \htmlinclude OpticalBackscatter.msg.html

(cl:defclass <OpticalBackscatter> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type imc_ros_msgs-msg:Header
    :initform (cl:make-instance 'imc_ros_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass OpticalBackscatter (<OpticalBackscatter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpticalBackscatter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpticalBackscatter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imc_ros_msgs-msg:<OpticalBackscatter> is deprecated: use imc_ros_msgs-msg:OpticalBackscatter instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OpticalBackscatter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:header-val is deprecated.  Use imc_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OpticalBackscatter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imc_ros_msgs-msg:value-val is deprecated.  Use imc_ros_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpticalBackscatter>) ostream)
  "Serializes a message object of type '<OpticalBackscatter>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpticalBackscatter>) istream)
  "Deserializes a message object of type '<OpticalBackscatter>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpticalBackscatter>)))
  "Returns string type for a message object of type '<OpticalBackscatter>"
  "imc_ros_msgs/OpticalBackscatter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpticalBackscatter)))
  "Returns string type for a message object of type 'OpticalBackscatter"
  "imc_ros_msgs/OpticalBackscatter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpticalBackscatter>)))
  "Returns md5sum for a message object of type '<OpticalBackscatter>"
  "bb0235784289384e625aac8e4f9ea4a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpticalBackscatter)))
  "Returns md5sum for a message object of type 'OpticalBackscatter"
  "bb0235784289384e625aac8e4f9ea4a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpticalBackscatter>)))
  "Returns full string definition for message of type '<OpticalBackscatter>"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float32 value~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpticalBackscatter)))
  "Returns full string definition for message of type 'OpticalBackscatter"
  (cl:format cl:nil "imc_ros_msgs/Header header~%std_msgs/Float32 value~%~%================================================================================~%MSG: imc_ros_msgs/Header~%std_msgs/Header rosheader~%std_msgs/UInt16 sync~%std_msgs/UInt16 mgid~%std_msgs/UInt16 size~%std_msgs/Float64 timestamp~%std_msgs/UInt16 src~%std_msgs/UInt8 src_ent~%std_msgs/UInt16 dst~%std_msgs/UInt8 dst_ent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt16~%uint16 data~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpticalBackscatter>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpticalBackscatter>))
  "Converts a ROS message object to a list"
  (cl:list 'OpticalBackscatter
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
))
