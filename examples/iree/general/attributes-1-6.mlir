#device_target_a = #hal.device.target<"a"> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_a, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.global"() <{initial_value = #hal.device.ordinal<0> : !hal.device, sym_name = "device_0", sym_visibility = "private", type = !hal.device}> : () -> ()
}) : () -> ()

