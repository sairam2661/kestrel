"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi32>) -> tensor<13x21x3xi32>, sym_name = "test_abs"}> ({
  ^bb0(%arg0: tensor<13x21x3xi32>):
    %0 = "tosa.abs"(%arg0) : (tensor<13x21x3xi32>) -> tensor<13x21x3xi32>
    "func.return"(%0) : (tensor<13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

