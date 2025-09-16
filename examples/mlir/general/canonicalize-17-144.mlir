"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?x7x?xf32>) -> index, sym_name = "out_of_bound_dim_of_collapse_shape"}> ({
  ^bb0(%arg0: tensor<?x?x?x7x?xf32>):
    %0 = "arith.constant"() <{value = 5 : index}> : () -> index
    %1 = "tensor.collapse_shape"(%arg0) <{reassociation = [[0], [1, 2, 3, 4]]}> : (tensor<?x?x?x7x?xf32>) -> tensor<?x?xf32>
    %2 = "tensor.dim"(%1, %0) : (tensor<?x?xf32>, index) -> index
    "func.return"(%2) : (index) -> ()
  }) : () -> ()
}) : () -> ()

