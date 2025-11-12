"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index, index, index) -> !util.buffer, sym_name = "FoldSubspansIntoSliceOp", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index, %arg3: index):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    %2 = "util.buffer.subspan"(%arg0, %arg1, %arg2, %arg3) : (!util.buffer, index, index, index) -> !util.buffer
    %3 = "util.buffer.slice"(%2, %arg3, %0, %1) : (!util.buffer, index, index, index) -> !util.buffer
    "util.return"(%3) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

