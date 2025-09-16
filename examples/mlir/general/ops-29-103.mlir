"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi32>) -> tensor<13x21x3xf32>, sym_name = "test_cast1"}> ({
  ^bb0(%arg0: tensor<13x21x3xi32>):
    %0 = "tosa.cast"(%arg0) : (tensor<13x21x3xi32>) -> tensor<13x21x3xf32>
    "func.return"(%0) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

