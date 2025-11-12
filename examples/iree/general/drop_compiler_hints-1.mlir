"builtin.module"() ({
  "util.func"() <{function_type = () -> (i32, i32), sym_name = "multiple", tied_operands = [-1 : index, -1 : index]}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "util.optimization_barrier"(%0) : (i32) -> i32
    %2 = "util.optimization_barrier"(%1) : (i32) -> i32
    %3 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %4 = "util.optimization_barrier"(%2) : (i32) -> i32
    %5 = "util.optimization_barrier"(%3) : (i32) -> i32
    "util.return"(%4, %5) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

