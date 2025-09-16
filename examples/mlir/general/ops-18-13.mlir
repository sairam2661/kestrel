"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x4x?xf32>) -> tensor<?x?x?xf32>, sym_name = "legal_collapsing_reshape_dynamic_tensor"}> ({
  ^bb0(%arg0: tensor<?x?x?x4x?xf32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0], [1], [2, 3, 4]]}> : (tensor<?x?x?x4x?xf32>) -> tensor<?x?x?xf32>
    "func.return"(%0) : (tensor<?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

