"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer, !util.buffer, index, index, index, index, index) -> (), sym_name = "command_buffer_update_buffer_indirect", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: !util.buffer, %arg2: index, %arg3: index, %arg4: index, %arg5: index, %arg6: index):
    "hal.command_buffer.update_buffer"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6) <{flags = 0 : i64}> : (!hal.command_buffer, !util.buffer, index, index, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

