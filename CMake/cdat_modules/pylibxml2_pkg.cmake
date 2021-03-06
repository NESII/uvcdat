set(PYLIBXML2_MAJOR 2)
set(PYLIBXML2_MINOR 7)
set(PYLIBXML2_PATCH 8)
set(PYLIBXML2_MAJOR_SRC 2)
set(PYLIBXML2_MINOR_SRC 7)
set(PYLIBXML2_PATCH_SRC 8)
set(PYLIBXML2_URL ${LLNL_URL})
set(PYLIBXML2_GZ libxml2-${PYLIBXML2_MAJOR_SRC}.${PYLIBXML2_MINOR_SRC}.${PYLIBXML2_PATCH_SRC}.tar.gz)
set(PYLIBXML2_MD5 8127a65e8c3b08856093099b52599c86)
set(PYLIBXML2_SOURCE ${PYLIBXML2_URL}/${PYLIBXML2_GZ})

set (nm PYLIBXML2)
string(TOUPPER ${nm} uc_nm)
set(${uc_nm}_VERSION ${${nm}_MAJOR_SRC}.${${nm}_MINOR_SRC}.${${nm}_PATCH_SRC})
add_cdat_package(PYLIBXML2 "" "" OFF)
