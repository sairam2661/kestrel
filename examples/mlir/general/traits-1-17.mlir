"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1x6x1xi32>, tensor<7x1x5xi32>) -> tensor<?x7x6x5xi32>, sym_name = "broadcast_tensor_tensor_tensor"}> ({
  ^bb0(%arg0: tensor<?x1x6x1xi32>, %arg1: tensor<7x1x5xi32>):
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<?x1x6x1xi32>, tensor<7x1x5xi32>) -> tensor<?x7x6x5xi32>
    "func.return"(%0) : (tensor<?x7x6x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

