"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index, i32, index, index) -> (), sym_name = "FoldSubspansIntoFillOp", sym_visibility = "public"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index, %arg2: i32, %arg3: index, %arg4: index):
    %0 = "arith.constant"() <{value = 100 : index}> : () -> index
    %1 = "arith.constant"() <{value = 200 : index}> : () -> index
    %2 = "util.buffer.subspan"(%arg0, %arg1, %arg3, %arg4) : (!util.buffer, index, index, index) -> !util.buffer
    "util.buffer.fill"(%arg2, %2, %arg4, %0, %1) : (i32, !util.buffer, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

