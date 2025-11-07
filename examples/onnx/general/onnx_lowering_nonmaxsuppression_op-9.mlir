"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<1xi64>, tensor<1xf32>, tensor<1xf32>) -> tensor<*xi64>, sym_name = "test_nonmaxsuppression_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>, %arg1: tensor<?x?x?xf32>, %arg2: tensor<1xi64>, %arg3: tensor<1xf32>, %arg4: tensor<1xf32>):
    %0 = "onnx.NonMaxSuppression"(%arg0, %arg1, %arg2, %arg3, %arg4) {center_point_box = 1 : si64} : (tensor<?x?x?xf32>, tensor<?x?x?xf32>, tensor<1xi64>, tensor<1xf32>, tensor<1xf32>) -> tensor<*xi64>
    "func.return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

