"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xi32>, index) -> (), sym_name = "stripTieShape", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: index):
    %0 = "flow.tensor.tie_shape"(%arg0, %arg1) : (tensor<?xi32>, index) -> tensor<?xi32>
    %1 = "util.optimization_barrier"(%0) : (tensor<?xi32>) -> tensor<?xi32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

