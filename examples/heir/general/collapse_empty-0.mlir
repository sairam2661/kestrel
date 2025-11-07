"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xi32>, sym_name = "collapse_empty"}> ({
    %0 = "tensor.empty"() : () -> tensor<1x2x2xi32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = [[0, 1], [2]]}> : (tensor<1x2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

