# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "minerva2_iface: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iminerva2_iface:/home/tore/ws/src/minerva2/minerva2_iface/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(minerva2_iface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg" NAME_WE)
add_custom_target(_minerva2_iface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "minerva2_iface" "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg" "std_msgs/Float32:std_msgs/Header"
)

get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg" NAME_WE)
add_custom_target(_minerva2_iface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "minerva2_iface" "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg" "std_msgs/Float32:std_msgs/Header"
)

get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg" NAME_WE)
add_custom_target(_minerva2_iface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "minerva2_iface" "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg" "std_msgs/Float32:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minerva2_iface
)
_generate_msg_cpp(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minerva2_iface
)
_generate_msg_cpp(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minerva2_iface
)

### Generating Services

### Generating Module File
_generate_module_cpp(minerva2_iface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minerva2_iface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(minerva2_iface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(minerva2_iface_generate_messages minerva2_iface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_cpp _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_cpp _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_cpp _minerva2_iface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(minerva2_iface_gencpp)
add_dependencies(minerva2_iface_gencpp minerva2_iface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS minerva2_iface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/minerva2_iface
)
_generate_msg_eus(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/minerva2_iface
)
_generate_msg_eus(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/minerva2_iface
)

### Generating Services

### Generating Module File
_generate_module_eus(minerva2_iface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/minerva2_iface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(minerva2_iface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(minerva2_iface_generate_messages minerva2_iface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_eus _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_eus _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_eus _minerva2_iface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(minerva2_iface_geneus)
add_dependencies(minerva2_iface_geneus minerva2_iface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS minerva2_iface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minerva2_iface
)
_generate_msg_lisp(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minerva2_iface
)
_generate_msg_lisp(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minerva2_iface
)

### Generating Services

### Generating Module File
_generate_module_lisp(minerva2_iface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minerva2_iface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(minerva2_iface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(minerva2_iface_generate_messages minerva2_iface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_lisp _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_lisp _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_lisp _minerva2_iface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(minerva2_iface_genlisp)
add_dependencies(minerva2_iface_genlisp minerva2_iface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS minerva2_iface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/minerva2_iface
)
_generate_msg_nodejs(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/minerva2_iface
)
_generate_msg_nodejs(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/minerva2_iface
)

### Generating Services

### Generating Module File
_generate_module_nodejs(minerva2_iface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/minerva2_iface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(minerva2_iface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(minerva2_iface_generate_messages minerva2_iface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_nodejs _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_nodejs _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_nodejs _minerva2_iface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(minerva2_iface_gennodejs)
add_dependencies(minerva2_iface_gennodejs minerva2_iface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS minerva2_iface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minerva2_iface
)
_generate_msg_py(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minerva2_iface
)
_generate_msg_py(minerva2_iface
  "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minerva2_iface
)

### Generating Services

### Generating Module File
_generate_module_py(minerva2_iface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minerva2_iface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(minerva2_iface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(minerva2_iface_generate_messages minerva2_iface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Mtipro.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_py _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Navipac.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_py _minerva2_iface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tore/ws/src/minerva2/minerva2_iface/msg/Forcevector.msg" NAME_WE)
add_dependencies(minerva2_iface_generate_messages_py _minerva2_iface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(minerva2_iface_genpy)
add_dependencies(minerva2_iface_genpy minerva2_iface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS minerva2_iface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minerva2_iface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/minerva2_iface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(minerva2_iface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/minerva2_iface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/minerva2_iface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(minerva2_iface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minerva2_iface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/minerva2_iface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(minerva2_iface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/minerva2_iface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/minerva2_iface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(minerva2_iface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minerva2_iface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minerva2_iface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/minerva2_iface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(minerva2_iface_generate_messages_py std_msgs_generate_messages_py)
endif()
