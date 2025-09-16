"builtin.module"() ({
  "func.func"() <{function_type = (f32, index) -> tensor<2x?xf32>, sym_name = "collapse_shape_splat_dynamic_no_fold"}> ({
  ^bb0(%arg0: f32, %arg1: index):
    %0 = "tensor.splat"(%arg0, %arg1) : (f32, index) -> tensor<2x2x?xf32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = [[0], [1, 2]]}> : (tensor<2x2x?xf32>) -> tensor<2x?xf32>
    "func.return"(%1) : (tensor<2x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

