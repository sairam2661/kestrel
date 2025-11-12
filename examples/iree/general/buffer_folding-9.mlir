"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index, index, index, index, index) -> (), sym_name = "FoldSubspansIntoCopyOp", sym_visibility = "public"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: index, %arg3: index, %arg4: index, %arg5: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    %2 = "arith.constant"() <{value = 200 : index}> : () -> index
    %3 = "util.buffer.subspan"(%arg0, %arg1, %arg2, %arg3) : (!util.buffer, index, index, index) -> !util.buffer
    %4 = "util.buffer.subspan"(%arg0, %arg1, %arg4, %arg5) : (!util.buffer, index, index, index) -> !util.buffer
    "util.buffer.copy"(%3, %arg3, %1, %4, %arg5, %2, %0) : (!util.buffer, index, index, !util.buffer, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

