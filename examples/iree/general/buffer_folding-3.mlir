"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, i1) -> !util.buffer, sym_name = "SinkSubspanAcrossSelectOps", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: i1):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 128 : index}> : () -> index
    %2 = "arith.constant"() <{value = 256 : index}> : () -> index
    %3 = "util.buffer.subspan"(%arg0, %2, %0, %1) : (!util.buffer, index, index, index) -> !util.buffer
    %4 = "util.buffer.subspan"(%arg0, %2, %1, %1) : (!util.buffer, index, index, index) -> !util.buffer
    %5 = "arith.select"(%arg1, %3, %4) : (i1, !util.buffer, !util.buffer) -> !util.buffer
    "util.return"(%5) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

