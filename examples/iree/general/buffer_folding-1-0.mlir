"builtin.module"() ({
  "util.func"() <{function_type = (index) -> index, sym_name = "FoldBufferLengthOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 64 : index}> : () -> index
    %1:2 = "hal_inline.buffer.allocate"(%0, %arg0) : (index, index) -> (!hal.buffer, !util.buffer)
    %2 = "hal_inline.buffer.length"(%1#0) : (!hal.buffer) -> index
    "util.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

