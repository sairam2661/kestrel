"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence) -> !hal.fence, sym_name = "fence_join_one", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.fence):
    %0 = "hal.fence.join"(%arg0) <{flags = 0 : i64}> : (!hal.fence) -> !hal.fence
    "util.return"(%0) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

