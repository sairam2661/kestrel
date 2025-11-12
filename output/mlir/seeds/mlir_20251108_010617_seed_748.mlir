"builtin.module"() ({
  "func.func"() <{function_type = (i32, memref<4x8xi64>) -> (i32, memref<4x8xi64>), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: memref<4x8xi64>):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i64 = "arith.constant"() <{value = 3 : i64}> : () -> i64
    %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
    %1 = "arith.muli"(%arg0, %c2_i32) : (i32, i32) -> i32
    %2 = "memref.load"(%arg1, %c1_i32, %c1_i32) : (memref<4x8xi64>, i32, i32) -> i64
    %3 = "arith.addi"(%2, %c3_i64) : (i64, i64) -> i64
    %4 = "memref.store"(%3, %arg1, %c1_i32, %c1_i32) : (i64, memref<4x8xi64>, i32, i32) -> ()
    "scf.if"(%c1_i32) ({
      %5 = "arith.constant"() <{value = 4 : i32}> : () -> i32
      %6 = "arith.addi"(%0, %5) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      "scf.yield"(%0) : (i32) -> ()
    }) : (i32, i32) -> i32
    "func.return"(%0, %arg1) : (i32, memref<4x8xi64>) -> ()
  }) : () -> ()
}) : () -> ()