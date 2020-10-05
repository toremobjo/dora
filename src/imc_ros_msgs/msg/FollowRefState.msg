imc_ros_msgs/Header header
std_msgs/UInt8 control_ent
imc_ros_msgs/Reference reference
std_msgs/UInt8 state             # 1=Wait 2=goto 3=loiter 4=hover 5=elevator 6=timeout
std_msgs/UInt8 plroximity # 0x01=FAR 0x02=XY_NEAR 0x03=Z_NEAR 0x04=XY_UNREACHABLE 0x05=	Z_UNREACHABLE
