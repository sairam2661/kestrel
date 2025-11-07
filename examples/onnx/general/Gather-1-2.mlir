"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>) -> tensor<3x1x2xf32>, sym_name = "test_gather_axis1"}> ({
  ^bb0(%arg0: tensor<3x3xf32>):
    %0 = "onnx.Constant"() {value = dense<[[0, 2]]> : tensor<1x2xi64>} : () -> tensor<1x2xi64>
    %1 = "onnx.Gather"(%arg0, %0) {axis = 1 : si64} : (tensor<3x3xf32>, tensor<1x2xi64>) -> tensor<3x1x2xf32>
    "func.return"(%1) : (tensor<3x1x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

