"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5x6xf32>) -> tensor<*xf32>, sym_name = "test_resize1"}> ({
  ^bb0(%arg0: tensor<3x4x5x6xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<[0.000000e+00, 0.000000e+00, 0.000000e+00, 0.000000e+00, 1.000000e+00, 1.000000e+00, 1.000000e+00, 1.000000e+00]> : tensor<8xf32>} : () -> tensor<8xf32>
    %2 = "onnx.Constant"() {value = dense<[1.000000e+00, 1.000000e+00, 2.000000e+00, 2.000000e+00]> : tensor<4xf32>} : () -> tensor<4xf32>
    %3 = "onnx.Resize"(%arg0, %1, %2, %0) {antialias = 0 : si64, coordinate_transformation_mode = "asymmetric", cubic_coeff_a = -7.500000e-01 : f32, exclude_outside = 0 : si64, extrapolation_value = 0.000000e+00 : f32, keep_aspect_ratio_policy = "stretch", mode = "nearest", nearest_mode = "floor", onnx_node_name = "Resize1"} : (tensor<3x4x5x6xf32>, tensor<8xf32>, tensor<4xf32>, none) -> tensor<*xf32>
    "onnx.Return"(%3) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

