"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x5xi32>, tensor<?x4x5xi32>) -> tensor<*xi32>, sym_name = "test_prelu_broadcast_ruled_out_by_dim_analysis"}> ({
  ^bb0(%arg0: tensor<?x4x5xi32>, %arg1: tensor<?x4x5xi32>):
    %0 = "onnx.PRelu"(%arg0, %arg0) : (tensor<?x4x5xi32>, tensor<?x4x5xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

