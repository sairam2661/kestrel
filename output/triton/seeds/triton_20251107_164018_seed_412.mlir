"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "custom_op"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %3 = "arith.subi"(%arg1, %2) <{overflowFlags = #arith_overflow_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.xori"(%3, %1) <{overflowFlags = #arith_overflow_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.muli"(%4, %0) <{overflowFlags = #arith_overflow_overflow}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%5) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()