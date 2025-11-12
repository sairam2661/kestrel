"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence, !hal.fence) -> !hal.fence, sym_name = "fence_join_duplicate_fences", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.fence, %arg1: !hal.fence):
    %0 = "hal.fence.join"(%arg0, %arg1, %arg0) <{flags = 0 : i64}> : (!hal.fence, !hal.fence, !hal.fence) -> !hal.fence
    "util.return"(%0) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

