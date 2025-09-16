"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "mul_one_int_and_shift"}> ({
  ^bb0(%arg0: tensor<2x3xi32>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "tosa.const"() <{values = dense<31> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.mul"(%arg0, %0, %1) : (tensor<2x3xi32>, tensor<2x3xi32>, tensor<1xi8>) -> tensor<2x3xi32>
    "func.return"(%2) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

