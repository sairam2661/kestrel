"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "reduce_and_expand", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.reduce"(%arg0, %arg1) ({
    ^bb1(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<1x1xi32>
    %1 = "tt.expand_dims"(%0) <{axis = 0 : i32}> : (tensor<1x1xi32>) -> tensor<16x1xi32>
    "tt.return"(%1) : (tensor<16x1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()