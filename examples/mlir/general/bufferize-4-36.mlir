"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x4xf32>, tensor<8x5xf32>) -> tensor<8x9xf32>, sym_name = "tensor.concat_different_shapes"}> ({
  ^bb0(%arg0: tensor<8x4xf32>, %arg1: tensor<8x5xf32>):
    %0 = "tensor.concat"(%arg0, %arg1) <{dim = 1 : i64}> : (tensor<8x4xf32>, tensor<8x5xf32>) -> tensor<8x9xf32>
    "func.return"(%0) : (tensor<8x9xf32>) -> ()
  }) : () -> ()
}) : () -> ()

