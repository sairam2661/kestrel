"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xi32>) -> tensor<3x2xi32>, sym_name = "test_neg_2"}> ({
  ^bb0(%arg0: tensor<3x2xi32>):
    %0 = "onnx.Constant"() {value = dense<[[2, 3], [4, 5], [6, 7]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %1 = "onnx.Constant"() {value = dense<10> : tensor<1x1xi32>} : () -> tensor<1x1xi32>
    %2 = "onnx.Sub"(%arg0, %0) : (tensor<3x2xi32>, tensor<3x2xi32>) -> tensor<3x2xi32>
    %3 = "onnx.Add"(%2, %1) : (tensor<3x2xi32>, tensor<1x1xi32>) -> tensor<3x2xi32>
    "onnx.Return"(%3) : (tensor<3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

