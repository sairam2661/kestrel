"builtin.module"() ({
  "util.func"() <{function_type = (!stream.resource<external>, !stream.resource<transient>) -> (), sym_name = "funcArgs", sym_visibility = "private"}> ({
  ^bb0(%arg0: !stream.resource<external>, %arg1: !stream.resource<transient>):
    %0 = "util.optimization_barrier"(%arg0) : (!stream.resource<external>) -> !stream.resource<external>
    %1 = "util.optimization_barrier"(%arg1) : (!stream.resource<transient>) -> !stream.resource<transient>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

