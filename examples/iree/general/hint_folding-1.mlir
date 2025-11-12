"builtin.module"() ({
  "util.func"() <{function_type = () -> i32, sym_name = "no_fold_add", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "util.optimization_barrier"(%0) : (i32) -> i32
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
    "util.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

