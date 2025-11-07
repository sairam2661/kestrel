"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2x2xf32>, tensor<?xi64>) -> tensor<3x1x2xf32>, sym_name = "test_reducesum1", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<3x2x2xf32>, %arg1: tensor<?xi64>):
    %0 = "onnx.ReduceSum"(%arg0, %arg1) {keepdims = 1 : si64, noop_with_empty_axes = 1 : si64} : (tensor<3x2x2xf32>, tensor<?xi64>) -> tensor<3x1x2xf32>
    "func.return"(%0) : (tensor<3x1x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

