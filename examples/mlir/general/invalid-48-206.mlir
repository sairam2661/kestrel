"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xi1>, tensor<13x21x3xi1>) -> tensor<13x21x3xi1>, sym_name = "test_add_i1"}> ({
  ^bb0(%arg0: tensor<13x21x1xi1>, %arg1: tensor<13x21x3xi1>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<13x21x1xi1>, tensor<13x21x3xi1>) -> tensor<13x21x3xi1>
    "func.return"(%0) : (tensor<13x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

