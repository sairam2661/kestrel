"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xf32>) -> tensor<*xf32>, sym_name = "test_resize2"}> ({
  ^bb0(%arg0: tensor<3x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<[0.000000e+00, 0.000000e+00, 1.000000e+00, 1.000000e+00]> : tensor<4xf32>} : () -> tensor<4xf32>
    %2 = "onnx.Constant"() {value = dense<[1.000000e+00, 3.000000e+00]> : tensor<2xf32>} : () -> tensor<2xf32>
    %3 = "onnx.Resize"(%arg0, %1, %2, %0) {antialias = 0 : si64, coordinate_transformation_mode = "half_pixel", cubic_coeff_a = -7.500000e-01 : f32, exclude_outside = 0 : si64, extrapolation_value = 0.000000e+00 : f32, keep_aspect_ratio_policy = "stretch", mode = "linear", nearest_mode = "round_prefer_floor"} : (tensor<3x4xf32>, tensor<4xf32>, tensor<2xf32>, none) -> tensor<*xf32>
    "func.return"(%3) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

