#executable_target_format_a = #hal.executable.target<"backend_a", "format_a">
#executable_target_format_b = #hal.executable.target<"backend_b", "format_b">
#executable_target_format_c = #hal.executable.target<"backend_c", "format_c">
#device_target_device_a = #hal.device.target<"device_a", [#executable_target_format_a]> : !hal.device
#device_target_device_b = #hal.device.target<"device_b", [#executable_target_format_b]> : !hal.device
#device_target_device_c = #hal.device.target<"device_c", [#executable_target_format_c]> : !hal.device
"builtin.module"() <{sym_name = "module"}> ({
^bb0:
}) {hal.device.targets = {device_a = #device_target_device_a, device_bc = [#device_target_device_b, #device_target_device_c]}} : () -> ()

