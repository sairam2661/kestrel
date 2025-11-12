"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, index) -> (), sym_name = "FoldSubspanIntoStoreOp", sym_visibility = "public"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: index):
    %0 = "arith.constant"() <{value = 4 : index}> : () -> index
    %1 = "arith.constant"() <{value = 64 : index}> : () -> index
    %2 = "arith.constant"() <{value = 128 : index}> : () -> index
    %3 = "arith.constant"() <{value = 256 : index}> : () -> index
    %4 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %5 = "util.buffer.subspan"(%arg0, %arg1, %2, %3) : (!util.buffer, index, index, index) -> !util.buffer
    "util.buffer.store"(%4, %5, %3, %1, %0) : (i32, !util.buffer, index, index, index) -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

