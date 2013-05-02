FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/fastfiz_msgs/msg"
  "../src/fastfiz_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/fastfiz_msgs/SimulateShot.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
