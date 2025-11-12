"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer, index, index, index, index) -> (), sym_name = "command_buffer_copy_buffer_indirect", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: index, %arg2: index, %arg3: index, %arg4: index):
    "hal.command_buffer.copy_buffer"(%arg0, %arg1, %arg2, %arg1, %arg3, %arg4) <{flags = 0 : i64}> : (!hal.command_buffer, index, index, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

