#executable_target_format0 = #hal.executable.target<"backend0", "format0">
#executable_target_format1 = #hal.executable.target<"backend1", "format1">
#device_target_a_2_ = #hal.device.target<"a", {ordinal = 2 : index}, [#executable_target_format0, #executable_target_format1]> : !hal.device
"builtin.module"() ({
  "util.global"() <{initial_value = #device_target_a_2_, sym_name = "device_a", sym_visibility = "private", type = !hal.device}> : () -> ()
}) : () -> ()

