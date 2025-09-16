"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x7x3xf32>, tensor<4x4x3xf32>, tensor<?x?x?xf32>) -> (), sym_name = "concat"}> ({
  ^bb0(%arg0: tensor<4x7x3xf32>, %arg1: tensor<4x4x3xf32>, %arg2: tensor<?x?x?xf32>):
    %0 = "tensor.concat"(%arg0) <{dim = 0 : i64}> : (tensor<4x7x3xf32>) -> tensor<4x7x3xf32>
    %1 = "tensor.concat"(%arg0, %arg1) <{dim = 1 : i64}> : (tensor<4x7x3xf32>, tensor<4x4x3xf32>) -> tensor<4x11x3xf32>
    %2 = "tensor.concat"(%arg0, %arg2) <{dim = 2 : i64}> : (tensor<4x7x3xf32>, tensor<?x?x?xf32>) -> tensor<?x?x?xf32>
    %3 = "tensor.concat"(%arg2, %arg2) <{dim = 1 : i64}> : (tensor<?x?x?xf32>, tensor<?x?x?xf32>) -> tensor<?x10x?xf32>
    %4 = "tensor.concat"(%arg2, %arg1, %arg0) <{dim = 1 : i64}> : (tensor<?x?x?xf32>, tensor<4x4x3xf32>, tensor<4x7x3xf32>) -> tensor<4x?x3xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

