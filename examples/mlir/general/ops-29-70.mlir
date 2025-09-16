"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x21x3xi1>) -> tensor<1x21x3xi1>, sym_name = "test_logical_not"}> ({
  ^bb0(%arg0: tensor<1x21x3xi1>):
    %0 = "tosa.logical_not"(%arg0) : (tensor<1x21x3xi1>) -> tensor<1x21x3xi1>
    "func.return"(%0) : (tensor<1x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

