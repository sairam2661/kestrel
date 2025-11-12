"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer, !hal.buffer) -> (), sym_name = "fold_buffer_subspan_into_fill_buffer", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: !hal.buffer):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 8192 : index}> : () -> index
    %2 = "arith.constant"() <{value = 100000 : index}> : () -> index
    %3 = "arith.constant"() <{value = 262144 : index}> : () -> index
    %4 = "arith.constant"() <{value = 1234 : i32}> : () -> i32
    %5 = "hal.buffer.subspan"(%arg1, %1, %3) : (!hal.buffer, index, index) -> !hal.buffer
    "hal.command_buffer.fill_buffer"(%arg0, %5, %2, %1, %4) <{flags = 0 : i64}> : (!hal.command_buffer, !hal.buffer, index, index, i32) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

