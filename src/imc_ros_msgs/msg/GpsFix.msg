imc_ros_msgs/Header header
std_msgs/UInt16 validity #0x0001=VALID_DATE 0x0002=VALID_TIME 0x0003=VALID_POS 0x0008=VALID_COG etc, see IMC.xml
std_msgs/UInt8 type #see IMC.xml
std_msgs/UInt16 utc_year
std_msgs/UInt8 utc_month
std_msgs/UInt8 utc_day
std_msgs/Float32 utc_time
std_msgs/Float64 lat
std_msgs/Float64 lon
std_msgs/Float32 height
std_msgs/UInt8 satelllites
std_msgs/Float32 cog
std_msgs/Float32 sog
std_msgs/Float32 hdop
std_msgs/Float32 vdop
std_msgs/Float32 hacc
std_msgs/Float32 vacc
