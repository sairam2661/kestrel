"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "edge_case_combinations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.cmpi"(%arg0, %arg1, "sge") : (i32, i32) -> i1
    %1 = "arith.const"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %3 = "arith.select"(%0, %2, %arg1) : (i1, i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()