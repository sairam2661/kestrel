#device_target___unregistered__ = #hal.device.target<"__unregistered__"> : !hal.device
"builtin.module"() <{sym_name = "module"}> ({
  "util.global"() <{initial_value = #device_target___unregistered__, sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "func", sym_visibility = "private"}> ({
  }) {stream.affinity = #hal.device.affinity<@device>} : () -> ()
}) : () -> ()

