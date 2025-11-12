"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<2x3xi64>) -> (i32, tensor<2x3xi64>), sym_name = "complex_ssa_flow"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<2x3xi64>):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "scf.if"(%0) ({
      %2 = "arith.addf"(%arg0, %arg0) : (i32, i32) -> f32
      "scf.yield"(%2) : (f32) -> ()
    }, {
      %3 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i1) -> (i32, f32)
    %4 = "arith.addi"(%1#0, %1#1) : (i32, f32) -> i32
    %5 = "arith.cmpf"(%4, %4, "lt") : (i32, i32) -> i1
    %6 = "scf.if"(%5) ({
      %7 = "llvm.mlir.constant"() <{value = 3.14 : f32}> : () -> f32
      "scf.yield"(%7) : (f32) -> ()
    }, {
      %8 = "llvm.mlir.constant"() <{value = 2.71 : f32}> : () -> f32
      "scf.yield"(%8) : (f32) -> ()
    }) : (i1) -> (f32)
    "func.return"(%6, %arg1) : (f32, tensor<2x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()