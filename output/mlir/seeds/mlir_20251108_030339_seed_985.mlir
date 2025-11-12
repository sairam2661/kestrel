"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = -34567 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %2 = "llvm.mlir.constant"() <{value = 21 : i32}> : () -> i32
    %3 = "arith.muli"(%1, %2) : (i32, i32) -> i32
    %4 = "arith.subi"(%3, %arg1) : (i32, i32) -> i32
    "llvm.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()