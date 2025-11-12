#device_target_device_a = #hal.device.target<"device_a"> : !hal.device
#device_target_device_b = #hal.device.target<"device_b"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_device_a, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_device_b, sym_name = "device_b", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = (i1) -> !hal.device, sym_name = "arith_select", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i1):
    %0 = "util.global.load"() <{global = @device_a, is_immutable}> : () -> !hal.device
    %1 = "util.global.load"() <{global = @device_b, is_immutable}> : () -> !hal.device
    %2 = "arith.select"(%arg0, %0, %1) : (i1, !hal.device, !hal.device) -> !hal.device
    "util.return"(%2) : (!hal.device) -> ()
  }) : () -> ()
}) : () -> ()

