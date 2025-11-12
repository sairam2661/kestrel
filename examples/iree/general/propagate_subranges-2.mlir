"builtin.module"() ({
  "util.func"() <{function_type = (!util.buffer, !util.buffer) -> (), sym_name = "funcArgs", sym_visibility = "private"}> ({
  ^bb0(%arg0: !util.buffer, %arg1: !util.buffer):
    %0 = "util.optimization_barrier"(%arg0) : (!util.buffer) -> !util.buffer
    %1 = "util.optimization_barrier"(%arg1) : (!util.buffer) -> !util.buffer
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

