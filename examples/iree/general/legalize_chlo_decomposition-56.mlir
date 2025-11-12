"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>, tensor<1xf32>) -> (tensor<1xf32>, tensor<1xf32>), sym_name = "complex_tan"}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: tensor<1xf32>):
    %0 = "stablehlo.complex"(%arg0, %arg1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xcomplex<f32>>
    %1 = "chlo.tan"(%0) : (tensor<1xcomplex<f32>>) -> tensor<1xcomplex<f32>>
    %2 = "stablehlo.real"(%1) : (tensor<1xcomplex<f32>>) -> tensor<1xf32>
    %3 = "stablehlo.imag"(%1) : (tensor<1xcomplex<f32>>) -> tensor<1xf32>
    "func.return"(%2, %3) : (tensor<1xf32>, tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

