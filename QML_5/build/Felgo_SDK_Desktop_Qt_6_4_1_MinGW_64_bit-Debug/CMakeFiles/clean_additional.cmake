# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\QML_5_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\QML_5_autogen.dir\\ParseCache.txt"
  "QML_5_autogen"
  )
endif()
