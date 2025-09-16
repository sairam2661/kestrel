"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<4x4xf32>, tensor<?x?xf32>) -> (), sym_name = "cast"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<4x4xf32>, %arg2: tensor<?x?xf32>):
    %0 = "tensor.cast"(%arg0) : (tensor<*xf32>) -> tensor<?x?xf32>
    %1 = "tensor.cast"(%arg1) : (tensor<4x4xf32>) -> tensor<*xf32>
    %2 = "tensor.cast"(%arg2) : (tensor<?x?xf32>) -> tensor<4x?xf32>
    %3 = "tensor.cast"(%2) : (tensor<4x?xf32>) -> tensor<?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

