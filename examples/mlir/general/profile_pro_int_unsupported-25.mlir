"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi32>) -> tensor<1x21x3xi32>, sym_name = "test_reduce_sum"}> ({
  ^bb0(%arg0: tensor<13x21x3xi32>):
    %0 = "tosa.reduce_sum"(%arg0) <{axis = 0 : i32}> : (tensor<13x21x3xi32>) -> tensor<1x21x3xi32>
    "func.return"(%0) : (tensor<1x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

