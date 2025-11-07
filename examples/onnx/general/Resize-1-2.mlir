"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x3x4xf32>) -> tensor<1x1x3x12xf32>, sym_name = "test_resize_half_pixel_nearest_round_prefer_ceil"}> ({
  ^bb0(%arg0: tensor<1x1x3x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<[1, 1, 3, 12]> : tensor<4xi64>} : () -> tensor<4xi64>
    %2 = "onnx.Resize"(%arg0, %0, %0, %1) {antialias = 0 : si64, coordinate_transformation_mode = "half_pixel", cubic_coeff_a = -7.500000e-01 : f32, exclude_outside = 0 : si64, extrapolation_value = 0.000000e+00 : f32, keep_aspect_ratio_policy = "stretch", mode = "nearest", nearest_mode = "round_prefer_ceil"} : (tensor<1x1x3x4xf32>, none, none, tensor<4xi64>) -> tensor<1x1x3x12xf32>
    "func.return"(%2) : (tensor<1x1x3x12xf32>) -> ()
  }) : () -> ()
}) : () -> ()

