"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<1xi32>, tensor<2xi32>, tensor<?xi32>) -> tensor<*xf32>, sym_name = "tensor_reshape"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<1xi32>, %arg2: tensor<2xi32>, %arg3: tensor<?xi32>):
    %0 = "tensor.reshape"(%arg0, %arg1) : (tensor<*xf32>, tensor<1xi32>) -> tensor<?xf32>
    %1 = "tensor.reshape"(%0, %arg2) : (tensor<?xf32>, tensor<2xi32>) -> tensor<?x?xf32>
    %2 = "tensor.reshape"(%1, %arg3) : (tensor<?x?xf32>, tensor<?xi32>) -> tensor<*xf32>
    "func.return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

