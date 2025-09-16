"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi1>, tensor<13x21x3xi1>) -> tensor<26x21x3xi1>, sym_name = "test_concat"}> ({
  ^bb0(%arg0: tensor<13x21x3xi1>, %arg1: tensor<13x21x3xi1>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<13x21x3xi1>, tensor<13x21x3xi1>) -> tensor<26x21x3xi1>
    "func.return"(%0) : (tensor<26x21x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()

