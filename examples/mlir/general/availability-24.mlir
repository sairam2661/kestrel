"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x1x3xi1>, tensor<13x21x3xi1>) -> tensor<13x21x3xi1>, sym_name = "test_logical_or"}> ({
  ^bb0(%arg0: tensor<13x1x3xi1>, %arg1: tensor<13x21x3xi1>):
    %0 = "tosa.logical_or"(%arg0, %arg1) : (tensor<13x1x3xi1>, tensor<13x21x3xi1>) -> tensor<13x21x3xi1>
    "func.return"(%0) : (tensor<13x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

