"builtin.module"() ( {
  "func.func"() < { function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_integer_operations" } > ( {
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.addi"(%arg0, %arg0) < { overflowFlags = #arith_overflow_none } > : (i32, i32) -> i32
      %1 = "arith.addi"(%arg1, %arg1) < { overflowFlags = #arith_overflow_none } > : (i64, i64) -> i64
      %2 = "arith.cmpi"("eq", %0, %arg0) < { resultType = i1 } > : (i32, i32) -> i1
      %3 = "arith.cmpi"("eq", %1, %arg1) < { resultType = i1 } > : (i64, i64) -> i1
      %4 = "arith.andi"(%2, %3) : (i1, i1) -> i1
      %5 = "arith.select"(%4, %arg0, %0) : (i1, i32, i32) -> i32
      %6 = "arith.select"(%4, %arg1, %1) : (i1, i64, i64) -> i64
      "func.return"(%5, %6) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()