"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xi1>, sym_name = "test_greater"}> ({
  ^bb0(%arg0: tensor<13x21x1xf32>, %arg1: tensor<13x21x3xf32>):
    %0 = "tosa.greater"(%arg0, %arg1) : (tensor<13x21x1xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xi1>
    "func.return"(%0) : (tensor<13x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

