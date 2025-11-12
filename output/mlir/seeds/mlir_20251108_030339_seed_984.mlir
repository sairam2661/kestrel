"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "llvm.mlir.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "llvm.mlir.constant"() <{value = 20 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) : (i32, i32) -> i32
    %4 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.muli"(%3, %4) : (i32, i32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()