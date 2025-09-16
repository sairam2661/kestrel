"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x?xi32>) -> (tensor<1x2x3xi32>, tensor<1x2x?xi32>), sym_name = "fold_concat"}> ({
  ^bb0(%arg0: tensor<1x2x?xi32>):
    %0 = "tensor.concat"(%arg0) <{dim = 2 : i64}> : (tensor<1x2x?xi32>) -> tensor<1x2x3xi32>
    %1 = "tensor.concat"(%arg0) <{dim = 2 : i64}> : (tensor<1x2x?xi32>) -> tensor<1x2x?xi32>
    "func.return"(%0, %1) : (tensor<1x2x3xi32>, tensor<1x2x?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

