"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x8xi32>, sym_name = "concat_and_reduce"}> ({
  ^bb0(%arg0: tensor<2x3x4xi32>, %arg1: tensor<2x3x4xi32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 2 : i32}> : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x8xi32>
    %1 = "tosa.reduce_sum"(%0) <{axis = 2 : i32, nan_mode = "PROPAGATE"}> : (tensor<2x3x8xi32>) -> tensor<2x3xi32>
    "func.return"(%1) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()