"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x21x3xi32>, tensor<13x21x3xi32>) -> tensor<13x21x3xi32>, sym_name = "test_sub"}> ({
  ^bb0(%arg0: tensor<1x21x3xi32>, %arg1: tensor<13x21x3xi32>):
    %0 = "tosa.sub"(%arg0, %arg1) : (tensor<1x21x3xi32>, tensor<13x21x3xi32>) -> tensor<13x21x3xi32>
    "func.return"(%0) : (tensor<13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

