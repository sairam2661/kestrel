"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence, !hal.fence) -> !hal.fence, sym_name = "fence_join_null", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.fence, %arg1: !hal.fence):
    %0 = "util.null"() : () -> !hal.fence
    %1 = "hal.fence.join"(%arg0, %0, %arg1) <{flags = 0 : i64}> : (!hal.fence, !hal.fence, !hal.fence) -> !hal.fence
    "util.return"(%1) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

