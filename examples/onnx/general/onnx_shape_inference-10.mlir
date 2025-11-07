"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x32x112x112xf32>) -> tensor<*xf32>, sym_name = "test_clip"}> ({
  ^bb0(%arg0: tensor<1x32x112x112xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Clip"(%arg0, %0, %0) {max = 6.000000e+00 : f32, min = 0.000000e+00 : f32} : (tensor<1x32x112x112xf32>, none, none) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

