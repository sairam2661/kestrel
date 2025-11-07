"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xi32>) -> tensor<3x2xi32>, sym_name = "test_neg_3"}> ({
  ^bb0(%arg0: tensor<3x2xi32>):
    %0 = "onnx.Constant"() {value = dense<[[2, 3], [4, 5], [6, 7]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %1 = "onnx.Constant"() {value = dense<10> : tensor<1x1xi32>} : () -> tensor<1x1xi32>
    %2 = "onnx.Neg"(%0) : (tensor<3x2xi32>) -> tensor<3x2xi32>
    %3 = "onnx.Add"(%arg0, %2) : (tensor<3x2xi32>, tensor<3x2xi32>) -> tensor<3x2xi32>
    %4 = "onnx.Add"(%3, %1) : (tensor<3x2xi32>, tensor<1x1xi32>) -> tensor<3x2xi32>
    "onnx.Return"(%4) : (tensor<3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

