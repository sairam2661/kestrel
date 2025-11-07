"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<*xf32>, tensor<*xf32>, tensor<*xi64>) -> tensor<*xf32>, sym_name = "test_resizev11"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<*xf32>, %arg2: tensor<*xf32>, %arg3: tensor<*xi64>):
    %0 = "onnx.ResizeV11"(%arg0, %arg1, %arg2, %arg3) {coordinate_transformation_mode = "half_pixel", cubic_coeff_a = -7.500000e-01 : f32, exclude_outside = 0 : si64, extrapolation_value = 0.000000e+00 : f32, mode = "nearest", nearest_mode = "floor"} : (tensor<*xf32>, tensor<*xf32>, tensor<*xf32>, tensor<*xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

