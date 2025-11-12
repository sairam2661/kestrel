"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, !hal.fence) -> !hal.fence, sym_name = "PassThroughChainExternal", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: !hal.fence):
    %0 = "stream.timepoint.import"(%arg1) : (!hal.fence) -> !stream.timepoint
    %1 = "hal.fence.create"(%arg0) <{flags = 0 : i64}> : (!hal.device) -> !hal.fence
    "stream.timepoint.chain_external"(%0, %1) : (!stream.timepoint, !hal.fence) -> ()
    "util.return"(%1) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

