"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "complex_reduction"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = dense<1> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %2 = "tt.expand_dims"(%1, 1) <{axis = 1}> : (tensor<8x8xi32>, i32) -> tensor<8x1x8xi32>
    %3 = "tt.reduce"(%2) <{axis = 1}> ({
    ^bb1(%arg3: i32, %arg4: i32):
      %5 = "arith.addi"(%arg3, %arg4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "tt.reduce.return"(%5) : (i32) -> ()
    }) : (tensor<8x1x8xi32>) -> tensor<8x8xi32>
    "tt.return"(%3) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()