"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xf32>) -> tensor<5x4xf32>, sym_name = "collapse_shape_identity_fold"}> ({
  ^bb0(%arg0: tensor<5x4xf32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0], [1]]}> : (tensor<5x4xf32>) -> tensor<5x4xf32>
    "func.return"(%0) : (tensor<5x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

