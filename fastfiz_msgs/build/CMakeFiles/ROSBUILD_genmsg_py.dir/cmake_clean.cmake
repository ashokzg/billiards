FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/fastfiz_msgs/msg"
  "../src/fastfiz_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/fastfiz_msgs/msg/__init__.py"
  "../src/fastfiz_msgs/msg/_Event.py"
  "../src/fastfiz_msgs/msg/_ShotParams.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
