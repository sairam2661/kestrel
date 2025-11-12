"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64) -> (), sym_name = "executable_create", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64):
    %0 = "hal.executable.create"(%arg0, %arg1) <{executable_target = @exe::@binary1}> : (!hal.device, i64) -> !hal.executable
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

