"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi64>, tensor<2xf32>) -> tensor<*xf32>, sym_name = "test_onehot"}> ({
  ^bb0(%arg0: tensor<2x2xi64>, %arg1: tensor<2xf32>):
    %0 = "onnx.Constant"() {value = dense<10> : tensor<i64>} : () -> tensor<i64>
    %1 = "onnx.OneHot"(%arg0, %0, %arg1) {axis = -1 : si64} : (tensor<2x2xi64>, tensor<i64>, tensor<2xf32>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

