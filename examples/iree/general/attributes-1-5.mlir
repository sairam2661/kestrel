#device_target_a = #hal.device.target<"a"> : !hal.device
#device_target_b = #hal.device.target<"b", {config}> : !hal.device
#executable_target_f = #hal.executable.target<"llvm-cpu", "f">
#device_target_c = #hal.device.target<"c", {config}, [#executable_target_f]> : !hal.device
#device_target_d = #hal.device.target<"d", [#executable_target_f]> : !hal.device
"builtin.module"() ({
  "device.targets"() {target_0 = #device_target_a, target_1 = #device_target_b, target_2 = #device_target_c, target_3 = #device_target_d} : () -> ()
}) : () -> ()

