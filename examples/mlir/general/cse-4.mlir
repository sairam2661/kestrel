"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> (tensor<?x?xf32>, tensor<4x?xf32>), sym_name = "different_results"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "tensor.cast"(%arg0) : (tensor<*xf32>) -> tensor<?x?xf32>
    %1 = "tensor.cast"(%arg0) : (tensor<*xf32>) -> tensor<4x?xf32>
    "func.return"(%0, %1) : (tensor<?x?xf32>, tensor<4x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

