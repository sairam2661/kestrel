"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "complex_func"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %c0_i32 = "tosa.const"() <{value = 0 : i32}> : () -> i32
    %c1_i64 = "tosa.const"() <{value = 1 : i64}> : () -> i64
    %1 = "arith.addi"(%arg0, %c0_i32) : (i32, i32) -> i32
    %2 = "arith.cmpi"(%arg1, %c1_i64, "slt") : (i64, i64) -> i1
    "scf.if"(%2) ({
    ^bb1:
      %3 = "arith.addi"(%arg0, %arg1) : (i32, i64) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> (i32)
    "func.return"(%1, %arg1) : (i32, i64) -> ()
  }) : () -> (i32, i64)
}) : () -> ()