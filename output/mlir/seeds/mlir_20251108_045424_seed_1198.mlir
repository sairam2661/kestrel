"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> i32, sym_name = "complex_mixed_usage"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i64 = "arith.constant"() <{value = 1 : i64}> : () -> i64
      %0 = "arith.addi"(%arg0, %c0_i32) : (i32, i32) -> i32
      %1 = "arith.cmpi"("slt", %arg1, %c1_i64) : (i64, i64) -> i1
      %2 = "scf.if"(%1) ({
        ^bb1(%arg2: i1):
          %3 = "arith.addi"(%0, %c0_i32) : (i32, i32) -> i32
          "scf.yield"(%3) : (i32) -> i32
      }) : (i1) -> i32
      "func.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()