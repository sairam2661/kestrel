"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "tensor_mad"}> ({
    ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
      %0 = "arith.constant"() <{value = dense<1> : tensor<32x32xi32>}> : () -> tensor<32x32xi32>
      %1 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      %2 = "arith.addi"(%1, %0) <{overflowFlags = #arith_overflow_none}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      %3 = "arith.select"(%arg0, %1, %2) : (tensor<32x32xi32>, tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
      "tt.return"(%3) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()