"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1xf32>) -> tensor<f32>, sym_name = "compose_collapse_of_collapse_zero_dim"}> ({
  ^bb0(%arg0: tensor<1x1x1xf32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0, 1, 2]]}> : (tensor<1x1x1xf32>) -> tensor<1xf32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = []}> : (tensor<1xf32>) -> tensor<f32>
    "func.return"(%1) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

