"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x8x8xf32>, tensor<1x2x4x8xf32>) -> tensor<1x4x8x8xf32>, sym_name = "partially_foldable"}> ({
  ^bb0(%arg0: tensor<1x1x8x8xf32>, %arg1: tensor<1x2x4x8xf32>):
    %0 = "tosa.concat"(%arg0, %arg0) <{axis = 1 : i32}> : (tensor<1x1x8x8xf32>, tensor<1x1x8x8xf32>) -> tensor<1x2x8x8xf32>
    %1 = "tosa.concat"(%arg1, %arg1) <{axis = 2 : i32}> : (tensor<1x2x4x8xf32>, tensor<1x2x4x8xf32>) -> tensor<1x2x8x8xf32>
    %2 = "tosa.concat"(%0, %1) <{axis = 1 : i32}> : (tensor<1x2x8x8xf32>, tensor<1x2x8x8xf32>) -> tensor<1x4x8x8xf32>
    "func.return"(%2) : (tensor<1x4x8x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

