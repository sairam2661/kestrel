"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> tensor<2x4xf32>, sym_name = "collapse_shape_splat"}> ({
  ^bb0(%arg0: f32):
    %0 = "tensor.splat"(%arg0) : (f32) -> tensor<2x2x2xf32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = [[0], [1, 2]]}> : (tensor<2x2x2xf32>) -> tensor<2x4xf32>
    "func.return"(%1) : (tensor<2x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

