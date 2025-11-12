"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<2x2x3xi32>, sym_name = "pass_constant_through", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = dense<[[[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]]> : tensor<2x2x3xi32>}> : () -> tensor<2x2x3xi32>
    "util.return"(%0) : (tensor<2x2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

