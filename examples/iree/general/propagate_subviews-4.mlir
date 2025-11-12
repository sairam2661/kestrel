"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<external>, !stream.resource<transient>) -> (), sym_name = "caller", sym_visibility = "private"}> ({
  ^bb0(%arg2: !stream.resource<external>, %arg3: !stream.resource<transient>):
    %0:2 = "util.call"(%arg2, %arg3) <{callee = @callee, tied_operands = [-1 : index, -1 : index]}> : (!stream.resource<external>, !stream.resource<transient>) -> (!stream.resource<external>, !stream.resource<transient>)
    %1 = "util.optimization_barrier"(%0#0) : (!stream.resource<external>) -> !stream.resource<external>
    %2 = "util.optimization_barrier"(%0#1) : (!stream.resource<transient>) -> !stream.resource<transient>
    "util.return"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (!stream.resource<external>, !stream.resource<transient>) -> (!stream.resource<external>, !stream.resource<transient>), sym_name = "callee", sym_visibility = "private", tied_operands = [-1 : index, -1 : index]}> ({
  ^bb0(%arg0: !stream.resource<external>, %arg1: !stream.resource<transient>):
    "util.return"(%arg0, %arg1) : (!stream.resource<external>, !stream.resource<transient>) -> ()
  }) : () -> ()
}) : () -> ()

