#executable_target_format = #hal.executable.target<"backend", "format">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "duplicate_keys"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.constant.block"() <{function_type = () -> (i32, i32, i32), keys = ["foo", "bar", "foo"]}> ({
        %0 = "arith.constant"() <{value = 1000 : i32}> : () -> i32
        %1 = "arith.constant"() <{value = 2000 : i32}> : () -> i32
        %2 = "arith.constant"() <{value = 1001 : i32}> : () -> i32
        "hal.return"(%0, %1, %2) : (i32, i32, i32) -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

