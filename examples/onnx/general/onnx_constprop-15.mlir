"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xi32>) -> tensor<3x2xi32>, sym_name = "test_broadcast_3"}> ({
  ^bb0(%arg0: tensor<3x2xi32>):
    %0 = "onnx.Constant"() {value = dense<[[1], [2], [3]]> : tensor<3x1xi32>} : () -> tensor<3x1xi32>
    %1 = "onnx.Constant"() {value = dense<[[10, 11], [21, 22], [31, 32]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %2 = "onnx.Add"(%0, %1) : (tensor<3x1xi32>, tensor<3x2xi32>) -> tensor<3x2xi32>
    %3 = "onnx.Add"(%2, %arg0) : (tensor<3x2xi32>, tensor<3x2xi32>) -> tensor<3x2xi32>
    "onnx.Return"(%3) : (tensor<3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

