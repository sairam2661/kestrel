"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x224x224xf32>) -> tensor<*xf32>, sym_name = "test_padv2"}> ({
  ^bb0(%arg0: tensor<1x3x224x224xf32>):
    %0 = "onnx.PadV2"(%arg0) {mode = "reflect", pads = [0, 0, 4, 4, 0, 0, 4, 4], value = 0.000000e+00 : f32} : (tensor<1x3x224x224xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

