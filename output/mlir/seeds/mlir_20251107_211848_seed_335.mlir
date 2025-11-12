"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>, tensor<2x3x4xf32>) -> tensor<2x3x8xf32>, sym_name = "concat_and_reverse"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>, %arg1: tensor<2x3x4xf32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 2 : i32}> : (tensor<2x3x4xf32>, tensor<2x3x4xf32>) -> tensor<2x3x8xf32>
    %1 = "tosa.reverse"(%0) <{axis = 1 : i32}> : (tensor<2x3x8xf32>) -> tensor<2x3x8xf32>
    "func.return"(%1) : (tensor<2x3x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()