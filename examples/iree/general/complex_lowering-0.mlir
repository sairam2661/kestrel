"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>, tensor<2xf32>, tensor<2xf32>) -> (tensor<2xf32>, tensor<2xf32>), sym_name = "add"}> ({
  ^bb0(%arg12: tensor<2xf32>, %arg13: tensor<2xf32>, %arg14: tensor<2xf32>, %arg15: tensor<2xf32>):
    %15 = "stablehlo.complex"(%arg12, %arg13) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %16 = "stablehlo.complex"(%arg14, %arg15) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %17 = "stablehlo.add"(%15, %16) : (tensor<2xcomplex<f32>>, tensor<2xcomplex<f32>>) -> tensor<2xcomplex<f32>>
    %18 = "stablehlo.real"(%17) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    %19 = "stablehlo.imag"(%17) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    "func.return"(%18, %19) : (tensor<2xf32>, tensor<2xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>, tensor<2xf32>, tensor<2xf32>) -> (tensor<2xf32>, tensor<2xf32>), sym_name = "sub"}> ({
  ^bb0(%arg8: tensor<2xf32>, %arg9: tensor<2xf32>, %arg10: tensor<2xf32>, %arg11: tensor<2xf32>):
    %10 = "stablehlo.complex"(%arg8, %arg9) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %11 = "stablehlo.complex"(%arg10, %arg11) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %12 = "stablehlo.subtract"(%10, %11) : (tensor<2xcomplex<f32>>, tensor<2xcomplex<f32>>) -> tensor<2xcomplex<f32>>
    %13 = "stablehlo.real"(%12) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    %14 = "stablehlo.imag"(%12) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    "func.return"(%13, %14) : (tensor<2xf32>, tensor<2xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>, tensor<2xf32>, tensor<2xf32>) -> (tensor<2xf32>, tensor<2xf32>), sym_name = "mul"}> ({
  ^bb0(%arg4: tensor<2xf32>, %arg5: tensor<2xf32>, %arg6: tensor<2xf32>, %arg7: tensor<2xf32>):
    %5 = "stablehlo.complex"(%arg4, %arg5) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %6 = "stablehlo.complex"(%arg6, %arg7) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %7 = "stablehlo.multiply"(%5, %6) : (tensor<2xcomplex<f32>>, tensor<2xcomplex<f32>>) -> tensor<2xcomplex<f32>>
    %8 = "stablehlo.real"(%7) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    %9 = "stablehlo.imag"(%7) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    "func.return"(%8, %9) : (tensor<2xf32>, tensor<2xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>, tensor<2xf32>, tensor<2xf32>) -> (tensor<2xf32>, tensor<2xf32>), sym_name = "div"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<2xf32>, %arg2: tensor<2xf32>, %arg3: tensor<2xf32>):
    %0 = "stablehlo.complex"(%arg0, %arg1) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %1 = "stablehlo.complex"(%arg2, %arg3) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xcomplex<f32>>
    %2 = "stablehlo.divide"(%0, %1) : (tensor<2xcomplex<f32>>, tensor<2xcomplex<f32>>) -> tensor<2xcomplex<f32>>
    %3 = "stablehlo.real"(%2) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    %4 = "stablehlo.imag"(%2) : (tensor<2xcomplex<f32>>) -> tensor<2xf32>
    "func.return"(%3, %4) : (tensor<2xf32>, tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

