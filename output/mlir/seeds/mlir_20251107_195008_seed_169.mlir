"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> (), sym_name = "complex_logic"}> ({
    ^bb0(%arg0: i64, %arg1: i64):
      %0 = "arith.constant"() <{value = 1 : i64}> : () -> i64
      %1 = "arith.addi"(%arg0, %arg1) : (i64, i64) -> i64
      %2 = "arith.cmpi"(%0, %1) <{predicate = 0 : i64}> : (i64, i64) -> i1
      %3 = "arith.cmpi"(%0, %1) <{predicate = 1 : i64}> : (i64, i64) -> i1
      %4 = "arith.cmpi"(%0, %1) <{predicate = 2 : i64}> : (i64, i64) -> i1
      %5 = "arith.cmpi"(%0, %1) <{predicate = 3 : i64}> : (i64, i64) -> i1
      %6 = "arith.cmpi"(%0, %1) <{predicate = 4 : i64}> : (i64, i64) -> i1
      %7 = "arith.cmpi"(%0, %1) <{predicate = 5 : i64}> : (i64, i64) -> i1
      %8 = "arith.cmpi"(%0, %1) <{predicate = 6 : i64}> : (i64, i64) -> i1
      %9 = "arith.cmpi"(%0, %1) <{predicate = 7 : i64}> : (i64, i64) -> i1
      %10 = "arith.cmpi"(%0, %1) <{predicate = 8 : i64}> : (i64, i64) -> i1
      %11 = "arith.cmpi"(%0, %1) <{predicate = 9 : i64}> : (i64, i64) -> i1
      "scf.if"(%2) ({
        ^bb1:
          "scf.yield"() : () -> ()
      }) : (i1) -> ()
      "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()