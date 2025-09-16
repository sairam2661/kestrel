"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1xi32>) -> tensor<1x1x1x1x1x1x1xi32>, sym_name = "test_const"}> ({
  ^bb0(%arg0: tensor<1x1xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1x1x1x1x1x1x1xi32>}> : () -> tensor<1x1x1x1x1x1x1xi32>
    "func.return"(%0) : (tensor<1x1x1x1x1x1x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

