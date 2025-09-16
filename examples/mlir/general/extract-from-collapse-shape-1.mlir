"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x6x32xf32>, index, index) -> f32, sym_name = "extract_from_static_shape"}> ({
  ^bb0(%arg0: tensor<2x6x32xf32>, %arg1: index, %arg2: index):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2]]}> : (tensor<2x6x32xf32>) -> tensor<12x32xf32>
    %1 = "tensor.extract"(%0, %arg1, %arg2) : (tensor<12x32xf32>, index, index) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

