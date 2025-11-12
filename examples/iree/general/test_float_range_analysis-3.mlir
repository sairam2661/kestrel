"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<2xf32>, sym_name = "tensor_const_trunc", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = dense<[-2.000000e+00, 2.000000e+00]> : tensor<2xf32>}> : () -> tensor<2xf32>
    %1 = "iree_unregistered.test_fprange"(%0) : (tensor<2xf32>) -> tensor<2xf32>
    "util.return"(%1) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

