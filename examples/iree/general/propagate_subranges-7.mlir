"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer) -> (), sym_name = "callerWithSubrange", sym_visibility = "private"}> ({
  ^bb0(%arg1: !util.buffer):
    %0 = "util.buffer.size"(%arg1) : (!util.buffer) -> index
    %1 = "arith.constant"() <{value = 100 : index}> : () -> index
    %2 = "arith.constant"() <{value = 200 : index}> : () -> index
    %3 = "util.buffer.subspan"(%arg1, %0, %1, %2) : (!util.buffer, index, index, index) -> !util.buffer
    %4 = "util.call"(%3) <{callee = @callee, tied_operands = [-1 : index]}> : (!util.buffer) -> !util.buffer
    %5 = "util.buffer.size"(%4) : (!util.buffer) -> index
    %6 = "arith.constant"() <{value = 300 : index}> : () -> index
    %7 = "arith.constant"() <{value = 400 : index}> : () -> index
    %8 = "util.buffer.subspan"(%4, %5, %6, %7) : (!util.buffer, index, index, index) -> !util.buffer
    %9 = "util.call"(%8) <{callee = @callee, tied_operands = [-1 : index]}> : (!util.buffer) -> !util.buffer
    %10 = "util.optimization_barrier"(%9) : (!util.buffer) -> !util.buffer
    "util.return"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!util.buffer) -> !util.buffer, sym_name = "callee", sym_visibility = "private", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: !util.buffer):
    "util.return"(%arg0) : (!util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

