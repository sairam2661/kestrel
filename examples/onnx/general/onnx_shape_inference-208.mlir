"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x2x2xf32>, tensor<4xf32>) -> tensor<*xf32>, sym_name = "test_upsample_cst"}> ({
  ^bb0(%arg0: tensor<1x1x2x2xf32>, %arg1: tensor<4xf32>):
    %0 = "onnx.Constant"() {value = dense<[1.000000e+00, 1.000000e+00, 2.000000e+00, 3.000000e+00]> : tensor<4xf32>} : () -> tensor<4xf32>
    %1 = "onnx.Upsample"(%arg0, %0) {mode = "nearest"} : (tensor<1x1x2x2xf32>, tensor<4xf32>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

