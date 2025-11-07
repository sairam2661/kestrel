"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x1x32xf32>, tensor<4xi64>) -> tensor<*xf32>, sym_name = "test_reshape_dynamic"}> ({
  ^bb0(%arg0: tensor<5x5x1x32xf32>, %arg1: tensor<4xi64>):
    %0 = "onnx.Reshape"(%arg0, %arg1) {allowzero = 0 : si64} : (tensor<5x5x1x32xf32>, tensor<4xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

