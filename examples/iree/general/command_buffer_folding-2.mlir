"builtin.module"() ({
  "util.func"() <{function_type = (!hal.command_buffer, !util.buffer, index, !hal.buffer) -> (), sym_name = "fold_buffer_subspans_into_update_buffer", sym_visibility = "public"}> ({
  ^bb0(%arg0: !hal.command_buffer, %arg1: !util.buffer, %arg2: index, %arg3: !hal.buffer):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4096 : index}> : () -> index
    %2 = "arith.constant"() <{value = 8192 : index}> : () -> index
    %3 = "arith.constant"() <{value = 100000 : index}> : () -> index
    %4 = "arith.constant"() <{value = 262144 : index}> : () -> index
    %5 = "util.buffer.subspan"(%arg1, %arg2, %1, %4) : (!util.buffer, index, index, index) -> !util.buffer
    %6 = "hal.buffer.subspan"(%arg3, %2, %4) : (!hal.buffer, index, index) -> !hal.buffer
    "hal.command_buffer.update_buffer"(%arg0, %5, %4, %0, %6, %3, %2) <{flags = 0 : i64}> : (!hal.command_buffer, !util.buffer, index, index, !hal.buffer, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

