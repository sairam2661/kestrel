#device_target_a = #hal.device.target<"a"> : !hal.device
#device_target_b = #hal.device.target<"b"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #hal.device.select<[#device_target_a]> : !hal.device, sym_name = "main", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.select<[#device_target_b, #hal.device.ordinal<1> : !hal.device, #hal.device.fallback<@main> : !hal.device]> : !hal.device, sym_name = "optional", sym_visibility = "private", type = !hal.device}> : () -> ()
}) : () -> ()

