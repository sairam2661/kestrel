"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<*xi64>) -> tensor<*xf32>, sym_name = "test_resizev13"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<*xi64>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ResizeV13"(%arg0, %0, %0, %arg1) {coordinate_transformation_mode = "half_pixel", cubic_coeff_a = -7.500000e-01 : f32, exclude_outside = 0 : si64, extrapolation_value = 0.000000e+00 : f32, mode = "nearest", nearest_mode = "floor"} : (tensor<*xf32>, none, none, tensor<*xi64>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

