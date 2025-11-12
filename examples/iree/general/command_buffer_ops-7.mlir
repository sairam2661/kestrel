"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer, index, i32) -> (), sym_name = "command_buffer_fill_buffer_i32_indirect", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: index, %arg2: i32):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    "hal.command_buffer.fill_buffer"(%arg0, %arg1, %0, %1, %arg2) <{flags = 0 : i64}> : (!hal.command_buffer, index, index, index, i32) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

