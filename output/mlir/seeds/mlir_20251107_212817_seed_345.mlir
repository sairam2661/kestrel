"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, index) -> (i32, f32), sym_name = "complex_func"}> ({
    ^bb0(%arg0: i32, %arg1: f32, %arg2: index):
      %0 = "llvm.mlir.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.mulf"(%arg1, %1) : (f32, f32) -> f32
      %4 = "scf.if"(%arg2) <{result_types = [i32, f32]}> ({
        ^bb0:
          %5 = "arith.addi"(%2, %0) : (i32, i32) -> i32
          %6 = "arith.mulf"(%3, %1) : (f32, f32) -> f32
          "scf.yield"(%5, %6) : (i32, f32) -> ()
      }) : (i32, f32)
      "func.return"(%4#0, %4#1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()