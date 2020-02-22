# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "clf_msg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iclf_msg:/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(clf_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg" NAME_WE)
add_custom_target(_clf_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "clf_msg" "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg" "geometry_msgs/Vector3:sensor_msgs/Imu:geometry_msgs/Quaternion:std_msgs/Int32:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(clf_msg
  "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clf_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(clf_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clf_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(clf_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(clf_msg_generate_messages clf_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg" NAME_WE)
add_dependencies(clf_msg_generate_messages_cpp _clf_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clf_msg_gencpp)
add_dependencies(clf_msg_gencpp clf_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clf_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(clf_msg
  "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clf_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(clf_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clf_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(clf_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(clf_msg_generate_messages clf_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg" NAME_WE)
add_dependencies(clf_msg_generate_messages_eus _clf_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clf_msg_geneus)
add_dependencies(clf_msg_geneus clf_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clf_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(clf_msg
  "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clf_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(clf_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clf_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(clf_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(clf_msg_generate_messages clf_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg" NAME_WE)
add_dependencies(clf_msg_generate_messages_lisp _clf_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clf_msg_genlisp)
add_dependencies(clf_msg_genlisp clf_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clf_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(clf_msg
  "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clf_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(clf_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clf_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(clf_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(clf_msg_generate_messages clf_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg" NAME_WE)
add_dependencies(clf_msg_generate_messages_nodejs _clf_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clf_msg_gennodejs)
add_dependencies(clf_msg_gennodejs clf_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clf_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(clf_msg
  "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Imu.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clf_msg
)

### Generating Services

### Generating Module File
_generate_module_py(clf_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clf_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(clf_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(clf_msg_generate_messages clf_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aghosh/makeUofT2020/muscle_makeUofT2020/src/clf_msg/msg/Frame_unit_data.msg" NAME_WE)
add_dependencies(clf_msg_generate_messages_py _clf_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(clf_msg_genpy)
add_dependencies(clf_msg_genpy clf_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS clf_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clf_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/clf_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(clf_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(clf_msg_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clf_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/clf_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(clf_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(clf_msg_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clf_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/clf_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(clf_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(clf_msg_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clf_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/clf_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(clf_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(clf_msg_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clf_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clf_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/clf_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(clf_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(clf_msg_generate_messages_py sensor_msgs_generate_messages_py)
endif()
