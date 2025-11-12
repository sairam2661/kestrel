"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<4xi64>, sym_name = "constant_splat_i64", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = dense<123> : tensor<4xi64>}> : () -> tensor<4xi64>
    "util.return"(%0) : (tensor<4xi64>) -> ()
  }) : () -> ()
}) : () -> ()

