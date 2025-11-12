"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>, sym_name = "illegal_tosa"}> ({
  ^bb0(%arg0: tensor<4xf32>, %arg1: tensor<4xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<4xf32>, tensor<4xf32>) -> tensor<4xf32>
    "func.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

