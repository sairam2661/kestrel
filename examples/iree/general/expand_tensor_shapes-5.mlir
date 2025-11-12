"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x?x?x2xf32>, tensor<?xi32>) -> (), sym_name = "tiedCaller", sym_visibility = "private"}> ({
  ^bb0(%arg2: tensor<4x?x?x2xf32>, %arg3: tensor<?xi32>):
    %2:2 = "util.call"(%arg2, %arg3) <{callee = @tiedCallee, tied_operands = [-1 : index, 1 : index]}> : (tensor<4x?x?x2xf32>, tensor<?xi32>) -> (tensor<4x?x?x2xf32>, tensor<?xi32>)
    %3 = "util.optimization_barrier"(%2#0) : (tensor<4x?x?x2xf32>) -> tensor<4x?x?x2xf32>
    %4 = "util.optimization_barrier"(%2#1) : (tensor<?xi32>) -> tensor<?xi32>
    "util.return"() : () -> ()
  }) : () -> ()
  "util.func"() <{function_type = (tensor<4x?x?x2xf32>, tensor<?xi32>) -> (tensor<4x?x?x2xf32>, tensor<?xi32>), sym_name = "tiedCallee", sym_visibility = "private", tied_operands = [-1 : index, 1 : index]}> ({
  ^bb0(%arg0: tensor<4x?x?x2xf32>, %arg1: tensor<?xi32>):
    %0 = "util.optimization_barrier"(%arg0) : (tensor<4x?x?x2xf32>) -> tensor<4x?x?x2xf32>
    %1 = "util.optimization_barrier"(%arg1) : (tensor<?xi32>) -> tensor<?xi32>
    "util.return"(%arg0, %arg1) : (tensor<4x?x?x2xf32>, tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

