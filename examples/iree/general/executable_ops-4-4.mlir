#executable_target_format = #hal.executable.target<"backend", "format">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "executable_with_constants"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> (i32, i32), keys = ["foo", "bar"]}> ({
      ^bb0(%arg1: !hal.device):
        %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
        "hal.return"(%4, %5) : (i32, i32) -> ()
      }) : () -> ()
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["baz"]}> ({
      ^bb0(%arg0: !hal.device):
        %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
        "hal.return"(%3) : (i32) -> ()
      }) : () -> ()
      "builtin.module"() ({
        "func.func"() <{function_type = () -> (), sym_name = "dispatch0"}> ({
          %0 = "hal.executable.constant.load"() <{key = "foo"}> : () -> i32
          %1 = "hal.executable.constant.load"() <{key = "bar"}> : () -> i32
          %2 = "hal.executable.constant.load"() <{key = "baz"}> : () -> i32
          "func.return"() : () -> ()
        }) : () -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

