"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, !hal.fence, !hal.fence) -> !hal.fence, sym_name = "DontPassThroughChainExternal", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: !hal.fence, %arg2: !hal.fence):
    %0 = "stream.timepoint.import"(%arg1) : (!hal.fence) -> !stream.timepoint
    "stream.timepoint.chain_external"(%0, %arg2) : (!stream.timepoint, !hal.fence) -> ()
    "util.return"(%arg2) : (!hal.fence) -> ()
  }) : () -> ()
}) : () -> ()

