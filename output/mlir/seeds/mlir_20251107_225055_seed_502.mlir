"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.subi"(%0, %arg1) : (i32, i32) -> i32
      %2 = "arith.muli"(%1, %arg0) : (i32, i32) -> i32
      %3 = "arith.divsi"(%2, %arg0) : (i32, i32) -> i32
      %4 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
      %5 = "arith.addi"(%3, %4) : (i32, i32) -> i32
      "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()