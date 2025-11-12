"builtin.module"() ({
  "func.func"() <{function_type = () -> (f32, f32), sym_name = "complex_interaction"}> ({
    ^bb0:
      %0 = "tosa.const"() <{values = dense<1.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
      %1 = "tosa.const"() <{values = dense<2.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
      %2 = "arith.addf"(%0, %1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
      %3 = "llvm.mlir.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
      %4 = "arith.cmpf"("oeq", %3, %3) : (f32, f32) -> i1
      "scf.if"(%4) {
      } : (i1) -> ()attributes
      .results
      "func.return",%2, %3 : (tensor<1xf32>, f32) -> ()
  }) : () -> ()
}) : () -> ()