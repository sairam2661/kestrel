"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x6x1xi32>, tensor<*xi32>) -> tensor<?x6x?xi32>, sym_name = "broadcast_tensor_tensor_tensor"}> ({
  ^bb0(%arg0: tensor<?x6x1xi32>, %arg1: tensor<*xi32>):
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<?x6x1xi32>, tensor<*xi32>) -> tensor<?x6x?xi32>
    "func.return"(%0) : (tensor<?x6x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

