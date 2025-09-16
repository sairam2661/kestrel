"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<i32>) -> tensor<4xi32>, sym_name = "broadcast_tensor_scalar_tensor"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<i32>):
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<4xi32>, tensor<i32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

