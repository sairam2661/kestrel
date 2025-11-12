#device_target_local_0_ = #hal.device.target<"local", {ordinal = 0 : index}> : !hal.device
#device_target_local_1_ = #hal.device.target<"local", {ordinal = 1 : index}> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_local_0_, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #device_target_local_1_, sym_name = "device_b", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> (i32, i32), sym_name = "resolve_with_different_ordinals", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
    %0:2 = "hal.allocator.resolve_memory_properties"() <{affinity = #hal.device.optimal<[#hal.device.affinity<@device_a>, #hal.device.affinity<@device_b>]>, lifetime = 3 : i32}> : () -> (i32, i32)
    "util.return"(%0#0, %0#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

