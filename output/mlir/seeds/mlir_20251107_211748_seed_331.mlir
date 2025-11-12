"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xi1>, sym_name = "xor_and_or_combination"}> ({
  ^bb0(%arg0: tensor<2x2xi1>, %arg1: tensor<2x2xi1>):
    %0 = "tosa.xor"(%arg0, %arg1) : (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xi1>
    %1 = "tosa.and"(%0, %arg0) : (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xi1>
    %2 = "tosa.or"(%1, %arg1) : (tensor<2x2xi1>, tensor<2x2xi1>) -> tensor<2x2xi1>
    "func.return"(%2) : (tensor<2x2xi1>) -> ()
  }) : () -> ()
}) : () -> ()