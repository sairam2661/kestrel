"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi4>) -> tensor<13x21x3xi4>, sym_name = "test_identity"}> ({
  ^bb0(%arg0: tensor<13x21x3xi4>):
    %0 = "tosa.identity"(%arg0) : (tensor<13x21x3xi4>) -> tensor<13x21x3xi4>
    "func.return"(%0) : (tensor<13x21x3xi4>) -> ()
  }) : () -> ()
}) : () -> ()

