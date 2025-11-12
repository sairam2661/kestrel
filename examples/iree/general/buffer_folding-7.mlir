"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index, !util.buffer, index, i1) -> (!util.buffer, index), sym_name = "SelectBufferSizeOp", sym_visibility = "public", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: !util.buffer, %arg3: index, %arg4: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "util.buffer.slice"(%arg0, %arg1, %0, %arg1) : (!util.buffer, index, index, index) -> !util.buffer
    %2 = "util.buffer.slice"(%arg2, %arg3, %0, %arg3) : (!util.buffer, index, index, index) -> !util.buffer
    %3 = "arith.select"(%arg4, %1, %2) : (i1, !util.buffer, !util.buffer) -> !util.buffer
    %4 = "util.buffer.size"(%3) : (!util.buffer) -> index
    %5 = "util.buffer.slice"(%3, %4, %0, %4) : (!util.buffer, index, index, index) -> !util.buffer
    "util.return"(%5, %4) : (!util.buffer, index) -> ()
  }) : () -> ()
}) : () -> ()

