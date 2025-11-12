#device_target_device = #hal.device.target<"device"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_device, sym_name = "target_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> !hal.device, sym_name = "target_device_load", sym_visibility = "private", tied_operands = [-1 : index]}> ({
    %0 = "util.global.load"() <{global = @target_device, is_immutable}> : () -> !hal.device
    "util.return"(%0) : (!hal.device) -> ()
  }) : () -> ()
}) : () -> ()

