"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x2x2xf32>, tensor<4xf32>) -> tensor<*xf32>, sym_name = "test_upsample_dyn"}> ({
  ^bb0(%arg0: tensor<1x1x2x2xf32>, %arg1: tensor<4xf32>):
    %0 = "onnx.Upsample"(%arg0, %arg1) {mode = "nearest"} : (tensor<1x1x2x2xf32>, tensor<4xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

