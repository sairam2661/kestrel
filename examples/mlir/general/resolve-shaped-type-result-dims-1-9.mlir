"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x5x4x?x7xf32>) -> (index, index), sym_name = "dim_reshape_collapse"}> ({
  ^bb0(%arg0: tensor<2x3x5x4x?x7xf32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2], [3, 4, 5]]}> : (tensor<2x3x5x4x?x7xf32>) -> tensor<6x5x?xf32>
    %3 = "tensor.dim"(%2, %0) : (tensor<6x5x?xf32>, index) -> index
    %4 = "tensor.dim"(%2, %1) : (tensor<6x5x?xf32>, index) -> index
    "func.return"(%3, %4) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

