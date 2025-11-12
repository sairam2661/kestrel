"builtin.module"() ({
  "util.func"() <{function_type = () -> i32, sym_name = "primitiveResultOnly", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %1 = "util.optimization_barrier"(%0) : (i32) -> i32
    "util.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

