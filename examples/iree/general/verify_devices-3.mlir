#device_target___unregistered__ = #hal.device.target<"__unregistered__"> : !hal.device
#device_target_local = #hal.device.target<"local"> : !hal.device
"builtin.module"() <{sym_name = "module"}> ({
  "util.global"() <{initial_value = #hal.device.select<[#device_target_local, #device_target___unregistered__]> : !hal.device, sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "func", sym_visibility = "private"}> ({
  }) {stream.affinity = #hal.device.affinity<@device>} : () -> ()
}) : () -> ()

