"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i1) -> i32, sym_name = "complex_truth_table"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i1):
    %0 = "comb.truth_table"(%arg2) <{table = [0, 1, 1, 0]}> : (i1) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()