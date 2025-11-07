"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1x?xf32>, tensor<?x5xf32>) -> tensor<*xf32>, sym_name = "test_prelu_broadcast_unknown_dims1"}> ({
  ^bb0(%arg0: tensor<?x1x?xf32>, %arg1: tensor<?x5xf32>):
    %0 = "onnx.PRelu"(%arg0, %arg1) : (tensor<?x1x?xf32>, tensor<?x5xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

