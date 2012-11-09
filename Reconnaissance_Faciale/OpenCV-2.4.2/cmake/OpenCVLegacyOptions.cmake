macro(ocv_legacy_option old superseded_by)
  if(DEFINED ${old})
    if(ARGV2)
      set(${superseded_by} ${${old}} CACHE ${ARGV2} "Set via depricated ${old}" FORCE)
    else()
      set(${superseded_by} ${${old}} CACHE BOOL     "Set via depricated ${old}" FORCE)
    endif()
    unset(${old} CACHE)
  endif()
endmacro()

ocv_legacy_option(BUILD_NEW_PYTHON_SUPPORT BUILD_opencv_python)
ocv_legacy_option(BUILD_JAVA_SUPPORT       BUILD_opencv_java)
ocv_legacy_option(WITH_ANDROID_CAMERA      BUILD_opencv_androidcamera)

if(DEFINED OPENCV_BUILD_3RDPARTY_LIBS)
  set(BUILD_ZLIB   ${OPENCV_BUILD_3RDPARTY_LIBS} CACHE BOOL "Set via depricated OPENCV_BUILD_3RDPARTY_LIBS" FORCE)
  set(BUILD_TIFF   ${OPENCV_BUILD_3RDPARTY_LIBS} CACHE BOOL "Set via depricated OPENCV_BUILD_3RDPARTY_LIBS" FORCE)
  set(BUILD_JASPER ${OPENCV_BUILD_3RDPARTY_LIBS} CACHE BOOL "Set via depricated OPENCV_BUILD_3RDPARTY_LIBS" FORCE)
  set(BUILD_JPEG   ${OPENCV_BUILD_3RDPARTY_LIBS} CACHE BOOL "Set via depricated OPENCV_BUILD_3RDPARTY_LIBS" FORCE)
  set(BUILD_PNG    ${OPENCV_BUILD_3RDPARTY_LIBS} CACHE BOOL "Set via depricated OPENCV_BUILD_3RDPARTY_LIBS" FORCE)
  unset(OPENCV_BUILD_3RDPARTY_LIBS CACHE)
endif()
