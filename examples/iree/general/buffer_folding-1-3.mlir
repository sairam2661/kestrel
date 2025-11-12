"builtin.module"() ({
  "util.func"() <{function_type = (!hal.buffer) -> !hal.buffer, sym_name = "SkipBufferViewBufferOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !hal.buffer):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 10 : index}> : () -> index
    %3 = "arith.constant"() <{value = 11 : index}> : () -> index
    %4 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 64 : index}> : () -> index
    %6 = "hal_inline.buffer_view.create"(%arg0, %0, %5, %4, %1, %2, %3) : (!hal.buffer, index, index, i32, i32, index, index) -> !hal.buffer_view
    %7 = "hal_inline.buffer_view.buffer"(%6) : (!hal.buffer_view) -> !hal.buffer
    "util.return"(%7) : (!hal.buffer) -> ()
  }) : () -> ()
}) : () -> ()

