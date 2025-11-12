"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index) -> !util.buffer, sym_name = "FoldBufferSubspanOps", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 300 : index}> : () -> index
    %2 = "arith.constant"() <{value = 400 : index}> : () -> index
    %3 = "arith.constant"() <{value = 500 : index}> : () -> index
    %4 = "util.buffer.subspan"(%arg0, %arg1, %0, %3) : (!util.buffer, index, index, index) -> !util.buffer
    %5 = "util.buffer.subspan"(%4, %3, %0, %2) : (!util.buffer, index, index, index) -> !util.buffer
    %6 = "util.buffer.subspan"(%5, %2, %0, %1) : (!util.buffer, index, index, index) -> !util.buffer
    "util.return"(%6) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

