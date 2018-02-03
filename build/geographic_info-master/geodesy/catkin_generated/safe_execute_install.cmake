execute_process(COMMAND "/home/hl/google/build/geographic_info-master/geodesy/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/hl/google/build/geographic_info-master/geodesy/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
