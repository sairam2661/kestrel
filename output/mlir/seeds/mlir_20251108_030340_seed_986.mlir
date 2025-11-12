"builtin.module"() ({
  "func.func"() <{function_type = (i32, f64) -> (i32, f64), sym_name = "mixed_types_test"}> ({
  ^bb0(%arg0: i32, %arg1: f64):
    %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 3.14 : f64}> : () -> f64
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg1, %1) : (f64, f64) -> f64
    "func.return"(%2, %3) : (i32, f64) -> ()
  }) : () -> ()
}) : () -> ()