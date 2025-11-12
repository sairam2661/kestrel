"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "llvm.mlir.constant"() <{value = 1234 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 5678 : i64}> : () -> i64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.mul"(%arg1, %1) : (i64, i64) -> i64
    %4 = "arith.addi"(%2, %arg0) : (i32, i32) -> i32
    %5 = "arith.mul"(%3, %arg1) : (i64, i64) -> i64
    %6 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %7 = "llvm.mlir.constant"() <{value = 20 : i64}> : () -> i64
    %8 = "arith.addi"(%4, %6) : (i32, i32) -> i32
    %9 = "arith.mul"(%5, %7) : (i64, i64) -> i64
    "llvm.return"(%8, %9) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()