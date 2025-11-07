"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xi32>, sym_name = "collapse_constant"}> ({
    %0 = "arith.constant"() <{value = dense<[[[1, 2], [3, 4]]]> : tensor<1x2x2xi32>}> : () -> tensor<1x2x2xi32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = [[0, 1], [2]]}> : (tensor<1x2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

