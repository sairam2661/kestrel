"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x4x5xf32>, tensor<8xi64>, tensor<f32>) -> tensor<*xf32>, sym_name = "pad_reflect_mode"}> ({
  ^bb0(%arg0: tensor<1x3x4x5xf32>, %arg1: tensor<8xi64>, %arg2: tensor<f32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Pad"(%arg0, %arg1, %arg2, %0) {mode = "reflect"} : (tensor<1x3x4x5xf32>, tensor<8xi64>, tensor<f32>, none) -> tensor<*xf32>
    "func.return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

