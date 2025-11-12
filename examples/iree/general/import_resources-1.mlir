"builtin.module"() ({
  "util.func"() <{function_type = () -> tensor<4xi1>, sym_name = "dense_i1", sym_visibility = "public", tied_operands = [-1 : index]}> ({
    %0 = "arith.constant"() <{value = dense<[true, false, false, true]> : tensor<4xi1>}> : () -> tensor<4xi1>
    "util.return"(%0) : (tensor<4xi1>) -> ()
  }) : () -> ()
}) : () -> ()

