#device_target_device_a = #hal.device.target<"device_a"> : !hal.device
#device_target_device_b = #hal.device.target<"device_b"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_device_a, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_device_b, sym_name = "device_b", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> !hal.device, sym_name = "caller", sym_visibility = "private", tied_operands = [-1 : index]}> ({
    %3 = "util.global.load"() <{global = @device_a, is_immutable}> : () -> !hal.device
    %4 = "util.call"(%3) <{callee = @callee_a, tied_operands = [-1 : index]}> : (!hal.device) -> !hal.device
    %5 = "util.call"(%4) <{callee = @callee_ab, tied_operands = [-1 : index]}> : (!hal.device) -> !hal.device
    "util.return"(%5) : (!hal.device) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!hal.device) -> !hal.device, sym_name = "callee_a", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg1: !hal.device):
    "util.return"(%arg1) : (!hal.device) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!hal.device) -> !hal.device, sym_name = "callee_ab", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "util.global.load"() <{global = @device_b, is_immutable}> : () -> !hal.device
    %2 = "arith.select"(%0, %arg0, %1) : (i1, !hal.device, !hal.device) -> !hal.device
    "util.return"(%2) : (!hal.device) -> ()
  }) : () -> ()
}) : () -> ()

