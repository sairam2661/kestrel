"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1x?x1x1x?x?x1x1xf32>) -> tensor<?x?x?x?xf32>, sym_name = "compose_collapse_of_collapse_unit_dims_dynamic"}> ({
  ^bb0(%arg0: tensor<?x1x?x1x1x?x?x1x1xf32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0], [1, 2], [3], [4], [5], [6, 7, 8]]}> : (tensor<?x1x?x1x1x?x?x1x1xf32>) -> tensor<?x?x1x1x?x?xf32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = [[0], [1], [2, 3, 4], [5]]}> : (tensor<?x?x1x1x?x?xf32>) -> tensor<?x?x?x?xf32>
    "func.return"(%1) : (tensor<?x?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

