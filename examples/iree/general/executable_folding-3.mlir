#executable_target_format = #hal.executable.target<"backend", "format">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "unused_device_arg"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["foo"]}> ({
      ^bb0(%arg0: !hal.device):
        %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        "hal.return"(%0) : (i32) -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

