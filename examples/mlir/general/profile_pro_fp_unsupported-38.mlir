"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>) -> tensor<13x21x3xf32>, sym_name = "test_reverse"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>):
    %0 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (tensor<13x21x3xf32>) -> tensor<13x21x3xf32>
    "func.return"(%0) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

