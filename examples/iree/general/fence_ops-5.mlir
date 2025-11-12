"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence, !hal.fence, i32) -> i32, sym_name = "fence_await", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.fence, %arg1: !hal.fence, %arg2: i32):
    %0 = "hal.fence.await"(%arg2, %arg0, %arg1) <{flags = 0 : i64}> : (i32, !hal.fence, !hal.fence) -> i32
    "util.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

