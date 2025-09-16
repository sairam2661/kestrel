"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x1x3xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xi1>, sym_name = "test_greater_equal"}> ({
  ^bb0(%arg0: tensor<13x1x3xf32>, %arg1: tensor<13x21x3xf32>):
    %0 = "tosa.greater_equal"(%arg0, %arg1) : (tensor<13x1x3xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xi1>
    "func.return"(%0) : (tensor<13x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

