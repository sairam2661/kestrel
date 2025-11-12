"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "complex_arith"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %3 = "arith.addi"(%arg1, %2) : (i32, i32) -> i32
    %4 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
    %5 = "arith.addf"(%0, %4) : (f32, f32) -> f32
    "func.return"(%5, %3) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()