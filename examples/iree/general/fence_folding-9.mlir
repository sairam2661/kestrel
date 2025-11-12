"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence, !hal.fence) -> i32, sym_name = "fence_await_duplicate_fences", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.fence, %arg1: !hal.fence):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "hal.fence.await"(%0, %arg0, %arg1, %arg0) <{flags = 0 : i64}> : (i32, !hal.fence, !hal.fence, !hal.fence) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

