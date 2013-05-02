FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/fastfiz_msgs/msg"
  "../src/fastfiz_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Event.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Event.lisp"
  "../msg_gen/lisp/ShotParams.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_ShotParams.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
