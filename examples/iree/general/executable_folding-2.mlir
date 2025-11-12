#executable_target_format = #hal.executable.target<"backend", "format">
"builtin.module"() ({
  "hal.executable"() <{sym_name = "complex_constant_blocks"}> ({
    "hal.executable.variant"() <{sym_name = "backend", target = #executable_target_format}> ({
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> (i32, i32), keys = ["foo", "bar"]}> ({
      ^bb0(%arg1: !hal.device):
        %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
        %2:2 = "hal.device.query"(%arg1) <{category = "sys", key = "foo"}> : (!hal.device) -> (i1, i32)
        "cf.cond_br"(%2#0)[^bb1, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
      ^bb1:  // pred: ^bb0
        %3:2 = "hal.device.query"(%arg1) <{category = "sys", key = "bar"}> : (!hal.device) -> (i1, i32)
        "cf.cond_br"(%3#0)[^bb2, ^bb3] <{operandSegmentSizes = array<i32: 1, 0, 0>}> : (i1) -> ()
      ^bb2:  // pred: ^bb1
        "hal.return"(%2#1, %3#1) : (i32, i32) -> ()
      ^bb3:  // 2 preds: ^bb0, ^bb1
        "hal.return"(%1, %1) : (i32, i32) -> ()
      }) : () -> ()
      "hal.executable.constant.block"() <{function_type = (!hal.device) -> i32, keys = ["baz"]}> ({
      ^bb0(%arg0: !hal.device):
        %0:2 = "hal.device.query"(%arg0) <{category = "sys", key = "baz"}> : (!hal.device) -> (i1, i32)
        "hal.return"(%0#1) : (i32) -> ()
      }) : () -> ()
      "hal.executable.variant_end"() : () -> ()
    }) : () -> ()
    "hal.executable_end"() : () -> ()
  }) : () -> ()
}) : () -> ()

