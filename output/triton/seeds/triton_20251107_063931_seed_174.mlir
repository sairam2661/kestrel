"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "matrix_add_reduce"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %3 = "tt.reduce"(%2) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (tensor<16x16xi32>) -> i32
    %5 = "arith.constant"() <{value = dense<1> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
    %6 = "tt.expand_dims"(%3) <{axis = 0 : i64}> : (i32) -> tensor<1x16x16xi32>
    %7 = "arith.addi"(%5, %6) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<1x16x16xi32>) -> tensor<16x16xi32>
    "tt.return"(%7) : (tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()