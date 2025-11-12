#executable_target_format = #hal.executable.target<"backend", "format">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "multiple_blocks_duplicate_keys"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.constant.block"() <{function_type = () -> (i32, i32), keys = ["foo", "bar"]}> ({
        %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %2 = "arith.constant"() <{value = 1000 : i32}> : () -> i32
        "hal.return"(%1, %2) : (i32, i32) -> ()
      }) : () -> ()
      "hal.executable.constant.block"() <{function_type = () -> i32, keys = ["bar"]}> ({
        %0 = "arith.constant"() <{value = 1001 : i32}> : () -> i32
        "hal.return"(%0) : (i32) -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

