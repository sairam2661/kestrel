"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>) -> tensor<2x3xf32>, sym_name = "test_gather_elements_axis0"}> ({
  ^bb0(%arg0: tensor<3x3xf32>):
    %0 = "onnx.Constant"() {value = dense<[[1, 2, 0], [2, 0, 0]]> : tensor<2x3xi64>} : () -> tensor<2x3xi64>
    %1 = "onnx.GatherElements"(%arg0, %0) {axis = 0 : si64} : (tensor<3x3xf32>, tensor<2x3xi64>) -> tensor<2x3xf32>
    "func.return"(%1) : (tensor<2x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

