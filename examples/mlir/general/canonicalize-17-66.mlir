"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x12x32xf32>) -> tensor<?x32xf32>, sym_name = "collapse_of_cast"}> ({
  ^bb0(%arg0: tensor<8x12x32xf32>):
    %0 = "tensor.cast"(%arg0) : (tensor<8x12x32xf32>) -> tensor<?x?x?xf32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = [[0, 1], [2]]}> : (tensor<?x?x?xf32>) -> tensor<?x?xf32>
    %2 = "tensor.cast"(%1) : (tensor<?x?xf32>) -> tensor<?x32xf32>
    "func.return"(%2) : (tensor<?x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

