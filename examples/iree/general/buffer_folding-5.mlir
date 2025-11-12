"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> (), sym_name = "FoldNestedBufferSizeOp", sym_visibility = "public"}> ({
  ^bb0(%arg0: !util.buffer):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 128 : index}> : () -> index
    "scf.for"(%0, %2, %1) ({
    ^bb0(%arg1: index):
      %6 = "util.buffer.size"(%arg0) : (!util.buffer) -> index
      %7 = "util.buffer.load"(%arg0, %6, %arg1, %1) : (!util.buffer, index, index, index) -> i8
      %8 = "util.optimization_barrier"(%7) : (i8) -> i8
      "scf.yield"() : () -> ()
    }) : (index, index, index) -> ()
    %3 = "util.buffer.size"(%arg0) : (!util.buffer) -> index
    %4 = "util.buffer.load"(%arg0, %3, %2, %1) : (!util.buffer, index, index, index) -> i8
    %5 = "util.optimization_barrier"(%4) : (i8) -> i8
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

