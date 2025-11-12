#device_target_vmvx = #hal.device.target<"vmvx"> : !hal.device
"builtin.module"() <{sym_name = "module"}> ({
  "util.global"() <{initial_value = #device_target_vmvx, sym_name = "device", sym_visibility = "private", type = !hal.device}> : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "func", sym_visibility = "private"}> ({
    "util.return"() : () -> ()
  }) {stream.affinity = #hal.device.promise<@unknown_device>} : () -> ()
}) : () -> ()

