"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<3x1xi1>, sym_name = "reduce_any_constant"}> ({
    %0 = "tosa.const"() <{values = dense<[[true, false, false], [false, false, false], [false, false, true]]> : tensor<3x3xi1>}> : () -> tensor<3x3xi1>
    %1 = "tosa.reduce_any"(%0) <{axis = 1 : i32}> : (tensor<3x3xi1>) -> tensor<3x1xi1>
    "func.return"(%1) : (tensor<3x1xi1>) -> ()
  }) : () -> ()
}) : () -> ()

