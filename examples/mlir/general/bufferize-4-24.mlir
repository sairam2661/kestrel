"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?x?xf32>) -> tensor<?x?xf32>, sym_name = "tensor.collapse_shape"}> ({
  ^bb0(%arg0: tensor<2x?x?xf32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2]]}> : (tensor<2x?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

