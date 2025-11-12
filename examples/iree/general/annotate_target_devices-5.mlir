#device_target_device_a = #hal.device.target<"device_a"> : !hal.device
#device_target_device_b = #hal.device.target<"device_b"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_device_a, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_device_b, sym_name = "device_b", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> !hal.device, sym_name = "allocator_select", sym_visibility = "private", tied_operands = [-1 : index]}> ({
    %0 = "util.global.load"() <{global = @device_a, is_immutable}> : () -> !hal.device
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "util.global.load"() <{global = @device_b, is_immutable}> : () -> !hal.device
    %3 = "arith.constant"() <{value = 101 : i64}> : () -> i64
    %4 = "hal.memory_type"() <{type = 70 : i32}> : () -> i32
    %5 = "hal.buffer_usage"() <{usage = 3 : i32}> : () -> i32
    %6:2 = "hal.allocator.select"(%0, %2, %1, %3, %4, %5) : (!hal.device, !hal.device, i64, i64, i32, i32) -> (!hal.device, i64)
    "util.return"(%6#0) : (!hal.device) -> ()
  }) : () -> ()
}) : () -> ()

