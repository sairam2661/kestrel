"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<4xf32>, sym_name = "tensorResultOnly", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = dense<[0.000000e+00, 1.000000e+00, 2.000000e+00, 3.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    %1 = "util.optimization_barrier"(%0) : (tensor<4xf32>) -> tensor<4xf32>
    "util.return"(%1) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

