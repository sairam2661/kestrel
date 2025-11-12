"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence, i32) -> (), sym_name = "fence_fail", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.fence, %arg1: i32):
    "hal.fence.fail"(%arg0, %arg1) : (!hal.fence, i32) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

