"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi1>) -> tensor<1x21x3xi1>, sym_name = "test_reduce_all"}> ({
  ^bb0(%arg0: tensor<13x21x3xi1>):
    %0 = "tosa.reduce_all"(%arg0) <{axis = 0 : i32}> : (tensor<13x21x3xi1>) -> tensor<1x21x3xi1>
    "func.return"(%0) : (tensor<1x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

