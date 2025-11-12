"builtin.module"() ({
  "func.func"() <{function_type = (i8, i32) -> (i64), sym_name = "llvm_example"}> ({
    ^bb0(%arg0: i8, %arg1: i32):
      %0 = "llvm.mlir.constant"() <{value = 42 : i64}> : () -> i64
      %1 = "arith.extui"(%arg0) : (i8) -> i64
      %2 = "arith.addi"(%0, %1) : (i64, i64) -> i64
      %3 = "llvm.mlir.constant"() <{value = 100 : i32}> : () -> i32
      %4 = "arith.extui"(%arg1) : (i32) -> i64
      %5 = "arith.addi"(%2, %4) : (i64, i64) -> i64
      "llvm.return"(%5) : (i64) -> ()
  }) : () -> ()
}) : () -> ()