"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x3xi8>) -> i32, sym_name = "complexControlFlowWithMixedTypes"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<4x3xi8>):
      %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
      %1 = "scf.if"(%0) ({
        %2 = "arith.addf"(%arg0, %arg0) : (i32, i32) -> f32
        %3 = "llvm.mlir.constant"() <{value = 42.000000e+00 : f32}> : () -> f32
        %4 = "arith.cmpf"(%2, %3, "gt") : (f32, f32) -> i1
        %5 = "scf.if"(%4) ({
          %6 = "arith.addf"(%3, %3) : (f32, f32) -> f32
          %7 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
          %8 = "arith.cmpf"(%6, %7, "lt") : (f32, f32) -> i1
          "scf.yield"(%8) : (i1) -> ()
        }, {
          %8 = "arith.addf"(%3, %3) : (f32, f32) -> f32
          %9 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
          %10 = "arith.cmpf"(%8, %9, "le") : (f32, f32) -> i1
          "scf.yield"(%10) : (i1) -> ()
        }) : (i1) -> i1
        "scf.yield"(%5) : (i1) -> ()
      }, {
        %2 = "arith.addf"(%arg0, %arg0) : (i32, i32) -> f32
        %3 = "llvm.mlir.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
        %4 = "arith.cmpf"(%2, %3, "lt") : (f32, f32) -> i1
        "scf.yield"(%4) : (i1) -> ()
      }) : (i1) -> i1
      "func.return"(%0) : (i1) -> i1
  }) : () -> ()
}) : () -> ()