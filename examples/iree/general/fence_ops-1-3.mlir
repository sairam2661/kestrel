"builtin.module"() ({
  "util.func"() <{function_type = (!hal.fence) -> (), sym_name = "fence_signal", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.fence):
    "hal.fence.signal"(%arg0) : (!hal.fence) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

