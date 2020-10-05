imc_ros_msgs/Header header
std_msgs/UInt8 flags 
#      //! Use Location Reference.
#      FLAG_LOCATION = 0x01,
#      //! Use Speed Reference.
#      FLAG_SPEED = 0x02,
#      //! Use Z Reference.
#      FLAG_Z = 0x04,
#      //! Use Radius Reference.
#      FLAG_RADIUS = 0x08,
#      //! Use this Reference as Start Position for PathControler.
#      FLAG_START_POINT = 0x10,
#      //! Use Current Position as Start Position for PathControler.
#      FLAG_DIRECT = 0x20,
#      //! Flag Maneuver Completion.
#      FLAG_MANDONE = 0x80
imc_ros_msgs/DesiredSpeed speed
imc_ros_msgs/DesiredZ z
std_msgs/Float64 lat 
std_msgs/Float64 lon
std_msgs/Float32 radius
