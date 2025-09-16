"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2xf32>, tensor<2x2xf32>) -> (), sym_name = "test_concat"}> ({
  ^bb0(%arg0: tensor<1x2xf32>, %arg1: tensor<2x2xf32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<1x2xf32>, tensor<2x2xf32>) -> tensor<?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

