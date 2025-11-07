"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x2x4xf32>) -> tensor<1x1x4x8xf32>, sym_name = "test_resize_pytorch_half_pixel_linear_float_scale_upsample"}> ({
  ^bb0(%arg0: tensor<1x1x2x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<[1.000000e+00, 1.000000e+00, 2.001000e+00, 2.000000e+00]> : tensor<4xf32>} : () -> tensor<4xf32>
    %2 = "onnx.Resize"(%arg0, %0, %1, %0) {antialias = 0 : si64, coordinate_transformation_mode = "pytorch_half_pixel", cubic_coeff_a = -7.500000e-01 : f32, exclude_outside = 0 : si64, extrapolation_value = 0.000000e+00 : f32, keep_aspect_ratio_policy = "stretch", mode = "linear", nearest_mode = "round_prefer_floor"} : (tensor<1x1x2x4xf32>, none, tensor<4xf32>, none) -> tensor<1x1x4x8xf32>
    "func.return"(%2) : (tensor<1x1x4x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

