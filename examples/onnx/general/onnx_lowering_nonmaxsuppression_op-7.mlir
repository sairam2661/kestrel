"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x6x4xf32>, tensor<2x1x6xf32>, tensor<1xi64>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x3xi64>, sym_name = "test_nonmaxsuppression_two_batches"}> ({
  ^bb0(%arg0: tensor<2x6x4xf32>, %arg1: tensor<2x1x6xf32>, %arg2: tensor<1xi64>, %arg3: tensor<1xf32>, %arg4: tensor<1xf32>):
    %0 = "onnx.NonMaxSuppression"(%arg0, %arg1, %arg2, %arg3, %arg4) {center_point_box = 0 : si64} : (tensor<2x6x4xf32>, tensor<2x1x6xf32>, tensor<1xi64>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x3xi64>
    "func.return"(%0) : (tensor<?x3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

