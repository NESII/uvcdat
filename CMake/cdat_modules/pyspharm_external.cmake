
# Pyspharm
#
set(pyspharm_source "${CMAKE_CURRENT_BINARY_DIR}/build/pyspharm")


configure_file(${cdat_CMAKE_SOURCE_DIR}/cdat_modules_extra/pyspharm_patch_step.cmake.in
  ${cdat_CMAKE_BINARY_DIR}/pyspharm_patch_step.cmake
  @ONLY)
  
set(pyspharm_PATCH_COMMAND ${CMAKE_COMMAND} -P ${cdat_CMAKE_BINARY_DIR}/pyspharm_patch_step.cmake)

ExternalProject_Add(pyspharm
  DOWNLOAD_DIR ${CDAT_PACKAGE_CACHE_DIR}
  SOURCE_DIR ${pyspharm_source}
  URL ${PYSPHARM_URL}/${PYSPHARM_GZ}
  URL_MD5 ${PYSPHARM_MD5}
  BUILD_IN_SOURCE 1
  PATCH_COMMAND ${pyspharm_PATCH_COMMAND}
  CONFIGURE_COMMAND ""
  BUILD_COMMAND env LD_LIBRARY_PATH=$ENV{LD_LIBRARY_PATH} PYTHONPATH=$ENV{PYTHONPATH} ${PYTHON_EXECUTABLE} setup.py build 
  INSTALL_COMMAND env LD_LIBRARY_PATH=$ENV{LD_LIBRARY_PATH} PYTHONPATH=$ENV{PYTHONPATH} ${PYTHON_EXECUTABLE} setup.py install --prefix=${PYTHON_SITE_PACKAGES_PREFIX}
  DEPENDS ${pyspharm_deps}
  ${ep_log_options}
  )
