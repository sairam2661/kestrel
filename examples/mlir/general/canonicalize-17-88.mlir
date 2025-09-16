"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x?x?xf32>) -> tensor<?x?xf32>, sym_name = "compose_collapse_of_collapse"}> ({
  ^bb0(%arg0: tensor<?x?x?x?x?xf32>):
    %0 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0, 1], [2], [3, 4]]}> : (tensor<?x?x?x?x?xf32>) -> tensor<?x?x?xf32>
    %1 = "tensor.collapse_shape"(%0) <{reassociation = [[0, 1], [2]]}> : (tensor<?x?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%1) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

