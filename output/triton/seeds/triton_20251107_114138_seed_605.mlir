"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>, sym_name = "matrix_add_xor_reduce"}> ({
  ^bb0(%arg0: tensor<16x16xi32>, %arg1: tensor<16x16xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %1 = "arith.xori"(%0, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %2 = "arith.constant"() <{value = dense<0> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
    %3 = "tt.reduce"(%1, %2, "s32", "add") ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (tensor<16x16xi32>, i32) -> i32
    "tt.return"(%3) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()