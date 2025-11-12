#device_target_local_0_ = #hal.device.target<"local", {ordinal = 0 : index}> : !hal.device
#device_target_local_1_ = #hal.device.target<"local", {ordinal = 1 : index}> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local_0_, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_local_1_, sym_name = "device_b", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = (i1) -> index, sym_name = "memoize_multiple_devices", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1):
    %0 = "util.global.load"() <{global = @device_a, is_immutable}> : () -> !hal.device
    %1 = "arith.constant"() <{value = 1 : i64}> : () -> i64
    %2 = "util.global.load"() <{global = @device_b, is_immutable}> : () -> !hal.device
    %3 = "arith.constant"() <{value = 3 : i64}> : () -> i64
    %4 = "arith.select"(%arg0, %0, %2) : (i1, !hal.device, !hal.device) -> !hal.device
    %5 = "arith.select"(%arg0, %1, %3) : (i1, i64, i64) -> i64
    %6 = "hal.device.memoize"(%4, %5) ({
      %7 = "arith.constant"() <{value = 4 : index}> : () -> index
      "hal.return"(%7) : (index) -> ()
    }) : (!hal.device, i64) -> index
    "util.return"(%6) : (index) -> ()
  }) : () -> ()
}) : () -> ()

