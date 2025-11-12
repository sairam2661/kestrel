#device_target_a = #hal.device.target<"a"> : !hal.device
#device_target_b = #hal.device.target<"b"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #hal.device.select<[#device_target_a, #device_target_b]> : !hal.device, sym_name = "selected_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> !hal.device, sym_name = "selected_device_load", sym_visibility = "private", tied_operands = [-1 : index]}> ({
    %0 = "util.global.load"() <{global = @selected_device, is_immutable}> : () -> !hal.device
    "util.return"(%0) : (!hal.device) -> ()
  }) : () -> ()
}) : () -> ()

