set (package Curses)
string(TOUPPER ${package} package_uc)

set(${package_uc}_MAJOR_SRC 5)
set(${package_uc}_MINOR_SRC 9)
set(${package_uc}_PATCH_SRC 0)
set(${package_uc}_URL ${LLNL_URL})
#set(${package_uc}_GZ ncurses-${${package_uc}_MAJOR_SRC}.${${package_uc}_MINOR_SRC}.${${package_uc}_PATCH_SRC}.tar.gz)
set(${package_uc}_GZ ncurses-${${package_uc}_MAJOR_SRC}.${${package_uc}_MINOR_SRC}.tar.gz)
set(${package_uc}_MD5 8cb9c412e5f2d96bc6f459aa8c6282a1)
set(${package_uc}_SOURCE ${${package_uc}_URL}/${${package_uc}_GZ})
set(${package_uc}_MD5 ${${package_uc}_MD5})

set(${package_uc}_VERSION ${${package_uc}_MAJOR_SRC}.${${package_uc}_MINOR_SRC})
add_cdat_package(${package} "" "" OFF)
