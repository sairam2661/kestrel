"builtin.module"() ({
  "util.func"() <{function_type = (i16) -> i16, sym_name = "optimizationBarrier", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i16):
    %0 = "util.optimization_barrier"(%arg0) : (i16) -> i16
    "util.return"(%0) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

