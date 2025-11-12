"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<4xf16>, sym_name = "dense_f16", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = dense<[1.099610e+00, 2.199220e+00, 3.300780e+00, 0.000000e+00]> : tensor<4xf16>}> : () -> tensor<4xf16>
    "util.return"(%0) : (tensor<4xf16>) -> ()
  }) : () -> ()
}) : () -> ()

