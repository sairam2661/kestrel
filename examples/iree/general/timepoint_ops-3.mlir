"builtin.module"() ({
  "util.func"() <{function_type = (!stream.timepoint, !hal.fence) -> (), sym_name = "timepointChainExternal", sym_visibility = "private"}> ({
  ^bb0(%arg0: !stream.timepoint, %arg1: !hal.fence):
    "stream.timepoint.chain_external"(%arg0, %arg1) : (!stream.timepoint, !hal.fence) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

