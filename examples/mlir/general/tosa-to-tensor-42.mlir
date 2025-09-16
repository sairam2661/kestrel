"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x1xf32>, tensor<6x1xf32>) -> (), sym_name = "concat"}> ({
  ^bb0(%arg0: tensor<5x1xf32>, %arg1: tensor<6x1xf32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<5x1xf32>, tensor<6x1xf32>) -> tensor<11x1xf32>
    %1 = "tosa.concat"(%arg0, %arg0) <{axis = 1 : i32}> : (tensor<5x1xf32>, tensor<5x1xf32>) -> tensor<5x2xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

