"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index) -> i32, sym_name = "FoldSubspanIntoLoadOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 64 : index}> : () -> index
    %2 = "arith.constant"() <{value = 128 : index}> : () -> index
    %3 = "arith.constant"() <{value = 256 : index}> : () -> index
    %4 = "util.buffer.subspan"(%arg0, %arg1, %2, %3) : (!util.buffer, index, index, index) -> !util.buffer
    %5 = "util.buffer.load"(%4, %3, %1, %0) : (!util.buffer, index, index, index) -> i32
    "util.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

