"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi64>, sym_name = "tensor_concat_and_convert"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %0 = "tosa.const"() <{value = dense<[1, 2, 3, 4]> : tensor<4xi32>}> : () -> tensor<4xi32>
      %1 = "tosa.const"() <{value = dense<[5, 6, 7, 8]> : tensor<4xi32>}> : () -> tensor<4xi32>
      %2 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i64}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<8xi32>
      %3 = "tosa.cast"(%2) <{src_type = tensor<8xi32>, dst_type = tensor<8xi64>}> : (tensor<8xi32>) -> tensor<8xi64>
      "func.return"(%3) : (tensor<8xi64>) -> ()
  }) : () -> ()
}) : () -> ()