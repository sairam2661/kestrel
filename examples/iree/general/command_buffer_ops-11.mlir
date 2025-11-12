"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer, index) -> (), sym_name = "command_buffer_copy_buffer_indirect", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    %2 = "arith.constant"() <{value = 300 : index}> : () -> index
    "hal.command_buffer.copy_buffer"(%arg0, %arg1, %0, %arg1, %1, %2) <{flags = 0 : i64}> : (!hal.command_buffer, index, index, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

