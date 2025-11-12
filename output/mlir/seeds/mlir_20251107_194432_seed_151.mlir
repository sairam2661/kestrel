"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "complex_operation"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg1) : (i64, i64) -> i64
    %1 = "arith.cmpi"(%0, %arg0, "sgt") : (i64, i64) -> i1
    %2 = "arith.select"(%1, %0, %arg1) : (i1, i64, i64) -> i64
    %3 = "arith.mulsi"(%2, %2) : (i64, i64) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
}) : () -> ()