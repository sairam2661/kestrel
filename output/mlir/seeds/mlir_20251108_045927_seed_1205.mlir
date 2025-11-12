"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> (i64, i32), sym_name = "llvm_complex_operations"}> ({
  ^bb0(%arg0: i8, %arg1: i32):
    %c0_i8 = "llvm.mlir.constant"() <{value = 0 : i8}> : () -> i8
    %c1_i32 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i64 = "llvm.mlir.constant"() <{value = 2 : i64}> : () -> i64
    %c3_i64 = "llvm.mlir.constant"() <{value = 3 : i64}> : () -> i64
    %0 = "arith.addi"(%arg0, %c0_i8) : (i8, i8) -> i8
    %1 = "arith.muli"(%arg1, %c1_i32) : (i32, i32) -> i32
    %2 = "arith.addi"(%0, %c1_i8) : (i8, i8) -> i8
    %3 = "arith.extui"(%2) : (i8) -> i64
    %4 = "arith.addi"(%3, %c2_i64) : (i64, i64) -> i64
    %5 = "arith.subi"(%4, %c3_i64) : (i64, i64) -> i64
    "llvm.return"(%5, %1) : (i64, i32) -> ()
  }) : () -> ()
}) : () -> ()