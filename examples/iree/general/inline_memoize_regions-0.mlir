"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64) -> index, sym_name = "constant_memoize", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64):
    %0 = "hal.device.memoize"(%arg0, %arg1) ({
      %1 = "arith.constant"() <{value = 4 : index}> : () -> index
      "hal.return"(%1) : (index) -> ()
    }) : (!hal.device, i64) -> index
    "util.return"(%0) : (index) -> ()
  }) : () -> ()
}) : () -> ()

