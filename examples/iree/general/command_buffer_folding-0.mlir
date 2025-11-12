"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64) -> !hal.executable, sym_name = "skip_command_buffer_device", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64):
    %0 = "hal.command_buffer.create"(%arg0, %arg1) <{command_categories = 3 : i32, modes = 1 : i32}> : (!hal.device, i64) -> !hal.command_buffer
    %1 = "hal.command_buffer.device"(%0) : (!hal.command_buffer) -> !hal.device
    %2 = "hal.executable.lookup"(%1) <{executable = @executable_name}> : (!hal.device) -> !hal.executable
    "util.return"(%2) : (!hal.executable) -> ()
  }) : () -> ()
}) : () -> ()

