"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xi32>, tensor<13x21x3xi32>) -> tensor<13x21x3xi32>, sym_name = "test_intdiv"}> ({
  ^bb0(%arg0: tensor<13x21x1xi32>, %arg1: tensor<13x21x3xi32>):
    %0 = "tosa.intdiv"(%arg0, %arg1) : (tensor<13x21x1xi32>, tensor<13x21x3xi32>) -> tensor<13x21x3xi32>
    "func.return"(%0) : (tensor<13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

