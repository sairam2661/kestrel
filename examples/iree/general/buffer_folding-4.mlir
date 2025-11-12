"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index) -> (index, i32), sym_name = "FoldBufferSizeOp", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 4 : index}> : () -> index
    %2 = "util.buffer.size"(%arg0) : (!util.buffer) -> index
    %3 = "util.buffer.load"(%arg0, %arg1, %0, %1) : (!util.buffer, index, index, index) -> i32
    "util.return"(%2, %3) : (index, i32) -> ()
  }) : () -> ()
}) : () -> ()

