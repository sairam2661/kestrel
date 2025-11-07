"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2x2xf32>) -> tensor<3x2xf32>, sym_name = "test_reducesum"}> ({
  ^bb0(%arg0: tensor<3x2x2xf32>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<1xi64>} : () -> tensor<1xi64>
    %1 = "onnx.ReduceSum"(%arg0, %0) {keepdims = 0 : si64, noop_with_empty_axes = 0 : si64} : (tensor<3x2x2xf32>, tensor<1xi64>) -> tensor<3x2xf32>
    "func.return"(%1) : (tensor<3x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

