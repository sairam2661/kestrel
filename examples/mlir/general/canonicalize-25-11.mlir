"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2x3xi32>) -> tensor<4x2x3xi32>, sym_name = "add_bcast_zero_int"}> ({
  ^bb0(%arg0: tensor<4x2x3xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1x1x1xi32>}> : () -> tensor<1x1x1xi32>
    %1 = "tosa.add"(%arg0, %0) : (tensor<4x2x3xi32>, tensor<1x1x1xi32>) -> tensor<4x2x3xi32>
    "func.return"(%1) : (tensor<4x2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

