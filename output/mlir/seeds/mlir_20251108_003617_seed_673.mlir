"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64, i32), sym_name = "complex_interaction"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 100 : i64}> : () -> i64
      %3 = "arith.addi"(%arg1, %2) : (i64, i64) -> i64
      %4 = "arith.cmpi"("eq", %1, %0) : (i32, i32) -> i1
      %5:2 = "scf.if"(%4) ({
        %6 = "arith.addi"(%3, %2) : (i64, i64) -> i64
        "scf.yield"(%1, %6) : (i32, i64) -> ()
      }, {
        %7 = "arith.subi"(%3, %2) : (i64, i64) -> i64
        "scf.yield"(%0, %7) : (i32, i64) -> ()
      }) : (i1) -> (i32, i64)
      "func.return"(%5#0, %5#1, %1) : (i32, i64, i32) -> ()
  }) : () -> ()
}) : () -> ()