"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64) -> (index, index), sym_name = "no_memoize_without_device_analysis", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64):
    %0:2 = "hal.device.memoize"(%arg0, %arg1) ({
      %1 = "arith.constant"() <{value = 4 : index}> : () -> index
      %2 = "arith.constant"() <{value = 5 : index}> : () -> index
      "hal.return"(%1, %2) : (index, index) -> ()
    }) : (!hal.device, i64) -> (index, index)
    "util.return"(%0#0, %0#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

