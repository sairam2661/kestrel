"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device) -> (), sym_name = "fence_create_unused", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device):
    %0 = "hal.fence.create"(%arg0) <{flags = 0 : i64}> : (!hal.device) -> !hal.fence
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

