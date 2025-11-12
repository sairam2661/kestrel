"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer) -> (), sym_name = "command_buffer_device", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer):
    %0 = "hal.command_buffer.device"(%arg0) : (!hal.command_buffer) -> !hal.device
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

