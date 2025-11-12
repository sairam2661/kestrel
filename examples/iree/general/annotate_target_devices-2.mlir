#device_target_required = #hal.device.target<"required"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_required, sym_name = "required_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.fallback<@required_device> : !hal.device, sym_name = "optional_device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> !hal.device, sym_name = "optional_device_load", sym_visibility = "private", tied_operands = [-1 : index]}> ({
    %0 = "util.global.load"() <{global = @optional_device, is_immutable}> : () -> !hal.device
    "util.return"(%0) : (!hal.device) -> ()
  }) : () -> ()
}) : () -> ()

