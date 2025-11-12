"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "tensor.constant"() <{value = dense<[[1, 2, 3], [4, 5, 6]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %1 = "tensor.constant"() <{value = dense<[[7, 8, 9], [10, 11, 12]]> : tensor<2x3xi32>}> : () -> tensor<2x3xi32>
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_sum}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %3 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith_overflow_sum}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    %4 = "arith.subi"(%2, %3) <{overflowFlags = #arith_overflow_sum}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%4) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()