"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x2x2xf32>) -> tensor<1x1x4x6xf32>, sym_name = "test_upsamplev7"}> ({
  ^bb0(%arg0: tensor<1x1x2x2xf32>):
    %0 = "onnx.UpsampleV7"(%arg0) {mode = "nearest", scales = [1.000000e-01 : f32, 2.000000e-01 : f32, 3.000000e-01 : f32, 4.000000e-01 : f32]} : (tensor<1x1x2x2xf32>) -> tensor<1x1x4x6xf32>
    "onnx.Return"(%0) : (tensor<1x1x4x6xf32>) -> ()
  }) : () -> ()
}) : () -> ()

