"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x16xi32>) -> tensor<1x16xi32>, sym_name = "figure3"}> ({
  ^bb0(%arg0: tensor<1x16xi32>):
    %0 = "tensor_ext.permute"(%arg0) <{permutation = dense<[[0, 0, 0, 13], [0, 1, 0, 8], [0, 2, 0, 4], [0, 3, 0, 0], [0, 4, 0, 11], [0, 5, 0, 7], [0, 6, 0, 14], [0, 7, 0, 5], [0, 8, 0, 15], [0, 9, 0, 3], [0, 10, 0, 12], [0, 11, 0, 6], [0, 12, 0, 10], [0, 13, 0, 2], [0, 14, 0, 9], [0, 15, 0, 1]]> : tensor<16x4xi64>}> : (tensor<1x16xi32>) -> tensor<1x16xi32>
    "func.return"(%0) : (tensor<1x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()

