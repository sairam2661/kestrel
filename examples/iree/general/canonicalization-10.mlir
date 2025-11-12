"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>) -> (tensor<2xf32>, tensor<2xf32>), sym_name = "complex"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<2xf32>):
    %0 = "stablehlo.complex"(%arg0, %arg1) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %1 = "stablehlo.real"(%0) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    %2 = "stablehlo.imag"(%0) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    "func.return"(%1, %2) : (tensor<2xf32>, tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

