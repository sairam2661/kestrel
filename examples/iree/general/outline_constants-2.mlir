"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "denseConstants", sym_visibility = "private"}> ({
    %0 = "arith.constant"() <{value = dense<[0.0287729427, 0.0297581609]> : tensor<2xf32>}> : () -> tensor<2xf32>
    %1 = "flow.tensor.constant"() <{value = dense<[0.000000e+00, 1.000000e+00]> : tensor<2xf32>}> : () -> tensor<2xf32>
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

