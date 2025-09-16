"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<1xi32>) -> tensor<?xf32>, sym_name = "test_tensor_reshape_unranked"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<1xi32>):
    %0 = "tensor.reshape"(%arg0, %arg1) : (tensor<*xf32>, tensor<1xi32>) -> tensor<?xf32>
    "func.return"(%0) : (tensor<?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

