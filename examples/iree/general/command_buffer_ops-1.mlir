"builtin.module"() ({
  "util.func"() <{function_type = (!hal.device, i64, index) -> (), sym_name = "command_buffer_create_bindings", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.device, %arg1: i64, %arg2: index):
    %0 = "hal.command_buffer.create"(%arg0, %arg1, %arg2) <{command_categories = 3 : i32, modes = 1 : i32}> : (!hal.device, i64, index) -> !hal.command_buffer
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

