FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/fastfiz_msgs/msg"
  "../src/fastfiz_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/SimulateShot.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_SimulateShot.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
