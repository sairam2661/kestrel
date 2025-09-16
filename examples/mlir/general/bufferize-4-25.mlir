"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1xf32>) -> tensor<f32>, sym_name = "tensor.collapse_shape_to_scalar"}> ({
  ^bb0(%arg0: tensor<1x1x1xf32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = []}> : (tensor<1x1x1xf32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

