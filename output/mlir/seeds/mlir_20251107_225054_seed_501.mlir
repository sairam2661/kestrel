"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (f32, i8), sym_name = "complex_nested_flow"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "llvm.mlir.constant"() <{value = 1234567890 : i64}> : () -> i64
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.subi"(%arg1, %1) : (i64, i64) -> i64
      %4 = "arith.sitofp"(%2) : (i32) -> f32
      %5 = "arith.trunci"(%3) : (i64) -> i8
      "llvm.return"(%4, %5) : (f32, i8) -> ()
  }) : () -> ()
}) : () -> ()