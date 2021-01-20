# Install script for directory: /home/tore/software/dora/src/imc_ros_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/tore/software/dora/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/imc_ros_msgs/msg" TYPE FILE FILES
    "/home/tore/software/dora/src/imc_ros_msgs/msg/Temperature.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/Header.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/EntityState.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/EntityList.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/EntityActivationState.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/SimulatedState.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/Heartbeat.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/Abort.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/Chlorophyll.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/Depth.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/DissolvedOrganicMatter.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/EstimatedState.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/DesiredSpeed.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/DesiredZ.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/Reference.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/FollowRefState.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/GpsFix.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/NavigationUncertainty.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/OperationalLimits.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/OpticalBackscatter.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/PlanControlState.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/Salinity.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/TrexAttribute.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/TrexToken.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/TrexOperation.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/VehicleMedium.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/StopManeuver.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/YoYo.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/FollowReference.msg"
    "/home/tore/software/dora/src/imc_ros_msgs/msg/IridiumMsgTx.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/imc_ros_msgs/cmake" TYPE FILE FILES "/home/tore/software/dora/build/imc_ros_msgs/catkin_generated/installspace/imc_ros_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/tore/software/dora/devel/include/imc_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/tore/software/dora/devel/share/roseus/ros/imc_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/tore/software/dora/devel/share/common-lisp/ros/imc_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/tore/software/dora/devel/share/gennodejs/ros/imc_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/tore/software/dora/devel/lib/python2.7/dist-packages/imc_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tore/software/dora/devel/lib/python2.7/dist-packages/imc_ros_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tore/software/dora/build/imc_ros_msgs/catkin_generated/installspace/imc_ros_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/imc_ros_msgs/cmake" TYPE FILE FILES "/home/tore/software/dora/build/imc_ros_msgs/catkin_generated/installspace/imc_ros_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/imc_ros_msgs/cmake" TYPE FILE FILES
    "/home/tore/software/dora/build/imc_ros_msgs/catkin_generated/installspace/imc_ros_msgsConfig.cmake"
    "/home/tore/software/dora/build/imc_ros_msgs/catkin_generated/installspace/imc_ros_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/imc_ros_msgs" TYPE FILE FILES "/home/tore/software/dora/src/imc_ros_msgs/package.xml")
endif()

