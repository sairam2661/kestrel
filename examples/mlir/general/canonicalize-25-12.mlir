"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "add_zero_int"}> ({
  ^bb0(%arg0: tensor<2x3xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "tosa.add"(%arg0, %0) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%1) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

