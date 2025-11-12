"builtin.module"() ({
  "util.func"() <{function_type = () -> !hal.fence, sym_name = "fence_join_empty", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "hal.fence.join"() <{flags = 0 : i64}> : () -> !hal.fence
    "util.return"(%0) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

