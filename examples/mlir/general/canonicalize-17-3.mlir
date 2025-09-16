"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "collapse_shape_rank0_identity_fold"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = []}> : (tensor<f32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

