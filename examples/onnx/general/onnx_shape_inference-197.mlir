"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x1x5xf32>, tensor<3x?x1xf32>) -> tensor<*xf32>, sym_name = "test_prelu_broadcast_unknown_dims"}> ({
  ^bb0(%arg0: tensor<3x1x5xf32>, %arg1: tensor<3x?x1xf32>):
    %0 = "onnx.PRelu"(%arg0, %arg1) : (tensor<3x1x5xf32>, tensor<3x?x1xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

