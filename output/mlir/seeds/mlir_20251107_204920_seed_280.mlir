"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xi1>) -> tensor<3x3xi1>, sym_name = "complex_tosa_operations"}> ({
  ^bb0(%arg0: tensor<3x3xi1>):
    %0 = "tosa.const"() <{value = dense<0> : tensor<3x3xi1>}> : () -> tensor<3x3xi1>
    %1 = "tosa.const"() <{value = dense<1> : tensor<3x3xi1>}> : () -> tensor<3x3xi1>
    %2 = "tosa.add"(%arg0, %0) : (tensor<3x3xi1>, tensor<3x3xi1>) -> tensor<3x3xi1>
    %3 = "tosa.sub"(%2, %1) : (tensor<3x3xi1>, tensor<3x3xi1>) -> tensor<3x3xi1>
    %4 = "tosa.mul"(%3, %1) : (tensor<3x3xi1>, tensor<3x3xi1>) -> tensor<3x3xi1>
    "func.return"(%4) : (tensor<3x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()