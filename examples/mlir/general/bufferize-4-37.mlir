"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8x?xf32>, tensor<8x?xf32>) -> tensor<8x?xf32>, sym_name = "tensor.concat_dynamic"}> ({
  ^bb0(%arg0: tensor<8x?xf32>, %arg1: tensor<8x?xf32>):
    %0 = "tensor.concat"(%arg0, %arg1) <{dim = 1 : i64}> : (tensor<8x?xf32>, tensor<8x?xf32>) -> tensor<8x?xf32>
    "func.return"(%0) : (tensor<8x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

