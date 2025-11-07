"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x4x8xf32>, tensor<100x4xf32>, tensor<100xi64>) -> tensor<*xf32>, sym_name = "test_roialign"}> ({
  ^bb0(%arg0: tensor<1x2x4x8xf32>, %arg1: tensor<100x4xf32>, %arg2: tensor<100xi64>):
    %0 = "onnx.RoiAlign"(%arg0, %arg1, %arg2) {coordinate_transformation_mode = "half_pixel", mode = "avg", output_height = 7 : si64, output_width = 7 : si64, sampling_ratio = 2 : si64, spatial_scale = 1.000000e+00 : f32} : (tensor<1x2x4x8xf32>, tensor<100x4xf32>, tensor<100xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

