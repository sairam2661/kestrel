"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>, tensor<13x21x3xf32>) -> tensor<26x21x3xf32>, sym_name = "test_concat"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>, %arg1: tensor<13x21x3xf32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<13x21x3xf32>, tensor<13x21x3xf32>) -> tensor<26x21x3xf32>
    "func.return"(%0) : (tensor<26x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

