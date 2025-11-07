"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xf32>) -> tensor<2x2xf32>, sym_name = "test_gather_elements_axis0neg"}> ({
  ^bb0(%arg0: tensor<3x2xf32>):
    %0 = "onnx.Constant"() {value = dense<[[0, -1], [1, 2]]> : tensor<2x2xi64>} : () -> tensor<2x2xi64>
    %1 = "onnx.GatherElements"(%arg0, %0) {axis = 0 : si64} : (tensor<3x2xf32>, tensor<2x2xi64>) -> tensor<2x2xf32>
    "func.return"(%1) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

