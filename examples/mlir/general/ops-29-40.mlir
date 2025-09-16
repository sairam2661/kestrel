"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xf32>, sym_name = "test_arithmetic_right_shift"}> ({
  ^bb0(%arg0: tensor<13x21x1xf32>, %arg1: tensor<13x21x3xf32>):
    %0 = "tosa.arithmetic_right_shift"(%arg0, %arg1) <{round = false}> : (tensor<13x21x1xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xf32>
    "func.return"(%0) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

