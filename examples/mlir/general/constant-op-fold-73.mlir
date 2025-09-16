"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1x3xi1>, sym_name = "reduce_any_constant"}> ({
    %0 = "tosa.const"() <{values = dense<[[true, true, true], [true, false, true]]> : tensor<2x3xi1>}> : () -> tensor<2x3xi1>
    %1 = "tosa.reduce_any"(%0) <{axis = 0 : i32}> : (tensor<2x3xi1>) -> tensor<1x3xi1>
    "func.return"(%1) : (tensor<1x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

