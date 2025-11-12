"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, !util.buffer) -> (), sym_name = "caller", sym_visibility = "private"}> ({
  ^bb0(%arg2: !util.buffer, %arg3: !util.buffer):
    %0:2 = "util.call"(%arg2, %arg3) <{callee = @callee, tied_operands = [-1 : index, -1 : index]}> : (!util.buffer, !util.buffer) -> (!util.buffer, !util.buffer)
    %1 = "util.optimization_barrier"(%0#0) : (!util.buffer) -> !util.buffer
    %2 = "util.optimization_barrier"(%0#1) : (!util.buffer) -> !util.buffer
    "util.return"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!util.buffer, !util.buffer) -> (!util.buffer, !util.buffer), sym_name = "callee", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !util.buffer, %arg1: !util.buffer):
    "util.return"(%arg0, %arg1) : (!util.buffer, !util.buffer) -> ()
  }) : () -> ()
}) : () -> ()

