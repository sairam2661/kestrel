"builtin.module"() ({
  "util.func"() <{function_type = (i1, tensor<4x?x?x2xf32>, tensor<4x?x?x2xf32>) -> (), sym_name = "select", sym_visibility = "private"}> ({
  ^bb0(%arg0: i1, %arg1: tensor<4x?x?x2xf32>, %arg2: tensor<4x?x?x2xf32>):
    %0 = "arith.select"(%arg0, %arg1, %arg2) : (i1, tensor<4x?x?x2xf32>, tensor<4x?x?x2xf32>) -> tensor<4x?x?x2xf32>
    %1 = "util.optimization_barrier"(%0) : (tensor<4x?x?x2xf32>) -> tensor<4x?x?x2xf32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

