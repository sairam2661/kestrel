"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device) -> !hal.fence, sym_name = "fence_elide_signaled", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device):
    %0 = "hal.fence.create"(%arg0) <{flags = 0 : i64}> : (!hal.device) -> !hal.fence
    "util.call"() <{callee = @external_nop_call}> : () -> ()
    "hal.fence.signal"(%0) : (!hal.fence) -> ()
    "util.return"(%0) : (!hal.fence) -> ()
  }) : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "external_nop_call", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

