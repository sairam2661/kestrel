"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) -> (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32), sym_name = "extract_from_tensor.from_elements_variable_3d"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32, %arg4: f32, %arg5: f32, %arg6: f32, %arg7: f32, %arg8: f32, %arg9: f32, %arg10: f32, %arg11: f32):
    %0 = "tensor.from_elements"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8, %arg9, %arg10, %arg11) : (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) -> tensor<3x2x2xf32>
    %1 = "arith.constant"() <{value = 0 : index}> : () -> index
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor.extract"(%0, %1, %1, %1) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %5 = "tensor.extract"(%0, %1, %1, %2) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %6 = "tensor.extract"(%0, %1, %2, %1) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %7 = "tensor.extract"(%0, %1, %2, %2) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %8 = "tensor.extract"(%0, %2, %1, %1) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %9 = "tensor.extract"(%0, %2, %1, %2) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %10 = "tensor.extract"(%0, %2, %2, %1) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %11 = "tensor.extract"(%0, %2, %2, %2) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %12 = "tensor.extract"(%0, %3, %1, %1) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %13 = "tensor.extract"(%0, %3, %1, %2) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %14 = "tensor.extract"(%0, %3, %2, %1) : (tensor<3x2x2xf32>, index, index, index) -> f32
    %15 = "tensor.extract"(%0, %3, %2, %2) : (tensor<3x2x2xf32>, index, index, index) -> f32
    "func.return"(%4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15) : (f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()

