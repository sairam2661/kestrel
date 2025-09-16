"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x1xi1>, sym_name = "reduce_all_constant"}> ({
    %0 = "tosa.const"() <{values = dense<[[true, true, true], [true, false, true]]> : tensor<2x3xi1>}> : () -> tensor<2x3xi1>
    %1 = "tosa.reduce_all"(%0) <{axis = 1 : i32}> : (tensor<2x3xi1>) -> tensor<2x1xi1>
    "func.return"(%1) : (tensor<2x1xi1>) -> ()
  }) : () -> ()
}) : () -> ()

