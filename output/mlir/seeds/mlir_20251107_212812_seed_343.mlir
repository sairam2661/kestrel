"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i32, sym_name = "complex_llvm_return"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.mulf"(%arg1, %1) : (f32, f32) -> f32
      %4 = "arith.trunci"(%3) : (f32) -> i32
      %5 = "arith.addi"(%2, %4) : (i32, i32) -> i32
      "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()