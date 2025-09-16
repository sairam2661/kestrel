"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x1x?x1xi32>, tensor<7x1x5xi32>) -> tensor<8x7x?x5xi32>, sym_name = "broadcast_tensor_tensor_tensor"}> ({
  ^bb0(%arg0: tensor<8x1x?x1xi32>, %arg1: tensor<7x1x5xi32>):
    %0 = "test.broadcastable"(%arg0, %arg1) : (tensor<8x1x?x1xi32>, tensor<7x1x5xi32>) -> tensor<8x7x?x5xi32>
    "func.return"(%0) : (tensor<8x7x?x5xi32>) -> ()
  }) : () -> ()
}) : () -> ()

