FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/fastfiz_msgs/msg"
  "../src/fastfiz_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/fastfiz_msgs/Event.h"
  "../msg_gen/cpp/include/fastfiz_msgs/ShotParams.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
