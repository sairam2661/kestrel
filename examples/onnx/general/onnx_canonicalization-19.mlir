"builtin.module"() ({
  "func.func"() <{function_type = (tensor<0xf32>, tensor<*xf32>, tensor<*xi64>) -> tensor<*xf32>, sym_name = "test_resize_empty_tensor_inputs"}> ({
  ^bb0(%arg0: tensor<0xf32>, %arg1: tensor<*xf32>, %arg2: tensor<*xi64>):
    %0 = "onnx.Resize"(%arg1, %arg0, %arg0, %arg2) {antialias = 0 : si64, coordinate_transformation_mode = "half_pixel", cubic_coeff_a = -7.500000e-01 : f32, exclude_outside = 0 : si64, extrapolation_value = 0.000000e+00 : f32, keep_aspect_ratio_policy = "stretch", mode = "nearest", nearest_mode = "floor"} : (tensor<*xf32>, tensor<0xf32>, tensor<0xf32>, tensor<*xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

