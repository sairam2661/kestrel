#device_target_foo = #hal.device.target<"foo"> : !hal.device
"builtin.module"() <{sym_name = "module"}> ({
^bb0:
}) {hal.device.targets = [#device_target_foo]} : () -> ()

