"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x2xi64>, tensor<i64>, tensor<2xf32>) -> tensor<*xf32>, sym_name = "test_onehot_dynamic"}> ({
  ^bb0(%arg0: tensor<?x2xi64>, %arg1: tensor<i64>, %arg2: tensor<2xf32>):
    %0 = "onnx.OneHot"(%arg0, %arg1, %arg2) {axis = 0 : si64} : (tensor<?x2xi64>, tensor<i64>, tensor<2xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

