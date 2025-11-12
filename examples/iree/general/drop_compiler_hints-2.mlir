"builtin.module"() ({
  "util.func"() <{function_type = () -> (i32, i32), sym_name = "multiple_operands", tied_operands = [-1 : index, -1 : index]}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2:2 = "util.optimization_barrier"(%0, %1) : (i32, i32) -> (i32, i32)
    "util.return"(%2#0, %2#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

