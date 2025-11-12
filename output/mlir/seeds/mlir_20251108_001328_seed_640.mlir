"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) : (i64, i64) -> i64
    %1 = "arith.mulsi"(%0, %0) : (i64, i64) -> i64
    %2 = "arith.subi"(%1, %arg1) : (i64, i64) -> i64
    %3 = "arith.addi"(%2, %arg0) : (i64, i64) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
}) : () -> ()