"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x3x2xi32>, tensor<?xi32>) -> tensor<4x3x2xi32>, sym_name = "broadcast_tensor_tensor_tensor"}> ({
  ^bb0(%arg0: tensor<4x3x2xi32>, %arg1: tensor<?xi32>):
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<4x3x2xi32>, tensor<?xi32>) -> tensor<4x3x2xi32>
    "func.return"(%0) : (tensor<4x3x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

