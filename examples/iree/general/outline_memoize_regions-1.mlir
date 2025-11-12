#device_target_local = #hal.device.target<"local"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local, sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = (index) -> (index, index), sym_name = "no_memoize_with_dynamic_values", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "util.global.load"() <{global = @device, is_immutable}> : () -> !hal.device
    %1 = "arith.constant"() <{value = -1 : i64}> : () -> i64
    %2:2 = "hal.device.memoize"(%0, %1) ({
      %3 = "arith.constant"() <{value = 5 : index}> : () -> index
      "hal.return"(%arg0, %3) : (index, index) -> ()
    }) : (!hal.device, i64) -> (index, index)
    "util.return"(%2#0, %2#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

