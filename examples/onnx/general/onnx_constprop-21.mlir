"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xi32>) -> tensor<3x2xi32>, sym_name = "test_neg_1"}> ({
  ^bb0(%arg0: tensor<3x2xi32>):
    %0 = "onnx.Constant"() {value = dense<[[2, 3], [4, 5], [6, 7]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %1 = "onnx.Sub"(%arg0, %0) : (tensor<3x2xi32>, tensor<3x2xi32>) -> tensor<3x2xi32>
    "onnx.Return"(%1) : (tensor<3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

