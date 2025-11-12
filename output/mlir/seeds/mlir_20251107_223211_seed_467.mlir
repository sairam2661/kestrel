"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "test_complex_flow"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %3 = "arith.addi"(%arg1, %2) : (i64, i64) -> i64
    "scf.if"(%1) ({
    ^bb0:
      %4 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) {
    } : (i32) -> (i32)
    "scf.for"(%0, %1, %3, %arg0) ({
    ^bb0(%arg4: i32, %arg5: i64):
      %6 = "arith.addi"(%arg4, %arg0) : (i32, i32) -> i32
      %7 = "arith.addi"(%arg5, %arg1) : (i64, i64) -> i64
      "scf.yield"(%6, %7) : (i32, i64) -> ()
    }) : (i32, i64, i64, i32) -> (i32, i64)
    "func.return"(%1, %3) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()