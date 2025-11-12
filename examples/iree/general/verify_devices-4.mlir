#device_target_local_0_ = #hal.device.target<"local", {ordinal = 0 : index}> : !hal.device
#device_target_local_1_ = #hal.device.target<"local", {ordinal = 1 : index}> : !hal.device
"builtin.module"() <{sym_name = "module"}> ({
  "util.global"() <{initial_value = #device_target_local_0_, sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.fallback<@device> : !hal.device, sym_name = "optional", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.ordinal<0> : !hal.device, sym_name = "ordinal", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.select<[#device_target_local_0_, #device_target_local_1_]> : !hal.device, sym_name = "selected", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "func", sym_visibility = "private"}> ({
  }) {stream.affinity = #hal.device.affinity<@device>} : () -> ()
}) : () -> ()

