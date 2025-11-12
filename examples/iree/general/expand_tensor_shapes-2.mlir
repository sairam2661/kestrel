"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x?x?x2xf32>, tensor<?xi32>) -> (), sym_name = "funcArgs", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<4x?x?x2xf32>, %arg1: tensor<?xi32>):
    %0 = "util.optimization_barrier"(%arg0) : (tensor<4x?x?x2xf32>) -> tensor<4x?x?x2xf32>
    %1 = "util.optimization_barrier"(%arg1) : (tensor<?xi32>) -> tensor<?xi32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

