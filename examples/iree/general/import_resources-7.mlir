"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<4xf32>, sym_name = "dense_f32", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = dense<[1.100000e+00, 2.200000e+00, 3.300000e+00, 0.000000e+00]> : tensor<4xf32>}> : () -> tensor<4xf32>
    "util.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

