"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>), sym_name = "tensor_op_combo", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = dense<10> : tensor<16xi32>}> : () -> tensor<16xi32>
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_flags} > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %2 = "arith.xori"(%1, %0) <{overflowFlags = #arith_overflow_flags} > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.mul_tensors"(%2, %0) <{overflowFlags = #arith_overflow_flags} > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
    %5 = "arith.div_tensors"(%3, %4) <{overflowFlags = #arith_overflow_flags} > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %7 = "arith.shli"(%5, %6) <{overflowFlags = #arith_overflow_flags} > : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%7) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>, tensor<16xi32>) -> (tensor<16xi32>)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()