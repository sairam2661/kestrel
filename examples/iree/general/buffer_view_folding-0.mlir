"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer, index, index) -> !hal.buffer_view, sym_name = "FoldBufferViewCreateSubspan", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer, %arg1: index, %arg2: index):
    %0 = "hal.buffer.subspan"(%arg0, %arg1, %arg2) : (!hal.buffer, index, index) -> !hal.buffer
    %1 = "arith.constant"() <{value = 512 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1024 : index}> : () -> index
    %3 = "arith.constant"() <{value = 128 : index}> : () -> index
    %4 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "hal.buffer_view.create"(%0, %1, %2, %4, %5, %3) : (!hal.buffer, index, index, i32, i32, index) -> !hal.buffer_view
    "util.return"(%6) : (!hal.buffer_view) -> ()
  }) : () -> ()
}) : () -> ()

