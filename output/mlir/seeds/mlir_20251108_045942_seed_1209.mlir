"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_llvm_return"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %1) : (i32, i32) -> i32
    %2 = "llvm.mlir.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.subi"(%arg1, %2) : (i32, i32) -> i32
    %4 = "llvm.mlir.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "arith.muli"(%1, %4) : (i32, i32) -> i32
    %6 = "llvm.mlir.constant"() <{value = 3 : i32}> : () -> i32
    %7 = "arith.divsi"(%5, %6) : (i32, i32) -> i32
    %8 = "llvm.mlir.constant"() <{value = 4 : i32}> : () -> i32
    %9 = "arith.addi"(%7, %8) : (i32, i32) -> i32
    "llvm.return"(%0, %9) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()