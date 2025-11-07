"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>) -> tensor<3xi32>, sym_name = "test_add_constant_4"}> ({
  ^bb0(%arg0: tensor<3xi32>):
    %0 = "onnx.Constant"() {value = dense<[0, 1, 2]> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "onnx.Constant"() {value = dense<[10, 11, 12]> : tensor<3xi32>} : () -> tensor<3xi32>
    %2 = "onnx.Add"(%0, %arg0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %3 = "onnx.Add"(%1, %2) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %4 = "onnx.Add"(%0, %arg0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    %5 = "onnx.Add"(%3, %4) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "onnx.Return"(%5) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

