"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device) -> !hal.fence, sym_name = "fence_create", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device):
    %0 = "hal.fence.create"(%arg0) <{flags = 0 : i64}> : (!hal.device) -> !hal.fence
    "util.return"(%0) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

