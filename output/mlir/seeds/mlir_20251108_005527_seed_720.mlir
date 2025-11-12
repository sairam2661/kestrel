"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i1, sym_name = "complex_cmp"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (i64, i64) -> i1
    %1 = "arith.cmpi"(%arg0, %arg1) <{predicate = 5 : i64}> : (i64, i64) -> i1
    %2 = "arith.cmpi"(%arg0, %arg1) <{predicate = 6 : i64}> : (i64, i64) -> i1
    %3 = "arith.cmpi"(%arg0, %arg1) <{predicate = 7 : i64}> : (i64, i64) -> i1
    %4 = "arith.cmpi"(%arg0, %arg1) <{predicate = 8 : i64}> : (i64, i64) -> i1
    %5 = "arith.cmpi"(%arg0, %arg1) <{predicate = 9 : i64}> : (i64, i64) -> i1
    %6 = "arith.cmpi"(%arg0, %arg1) <{predicate = 10 : i64}> : (i64, i64) -> i1
    %7 = "arith.cmpi"(%arg0, %arg1) <{predicate = 11 : i64}> : (i64, i64) -> i1
    %8 = "arith.addi"(%0, %1) : (i1, i1) -> i1
    %9 = "arith.addi"(%2, %3) : (i1, i1) -> i1
    %10 = "arith.addi"(%4, %5) : (i1, i1) -> i1
    %11 = "arith.addi"(%6, %7) : (i1, i1) -> i1
    %12 = "arith.addi"(%8, %9) : (i1, i1) -> i1
    %13 = "arith.addi"(%10, %11) : (i1, i1) -> i1
    "func.return"(%13) : (i1) -> ()
  }) : () -> ()
}) : () -> ()