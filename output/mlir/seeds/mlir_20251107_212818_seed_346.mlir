"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> i32, sym_name = "complex_llvm_example"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "llvm.mlir.constant"() {value = 42 : i32} : () -> i32
    %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %2 = "llvm.mlir.constant"() {value = 0.5 : f32} : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    %4 = "arith.mulf"(%3, %3) : (f32, f32) -> f32
    %5 = "arith.trunci"(%4 : f32) 	({}) : (f32) -> i32
    "llvm.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()