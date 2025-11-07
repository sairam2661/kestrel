"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi64>, tensor<i64>, tensor<2xf32>) -> tensor<*xf32>, sym_name = "test_onehot_depth"}> ({
  ^bb0(%arg0: tensor<2x2xi64>, %arg1: tensor<i64>, %arg2: tensor<2xf32>):
    %0 = "onnx.OneHot"(%arg0, %arg1, %arg2) {axis = -1 : si64} : (tensor<2x2xi64>, tensor<i64>, tensor<2xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

