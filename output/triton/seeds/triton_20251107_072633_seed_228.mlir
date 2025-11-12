"builtin.module"() ({
  "tt.func"() <{function_type = (i32, tensor<64xi8>) -> (tensor<64xi8>, tensor<64xi8>), sym_name = "complex_op_kernel", sym_visibility = "public"}> ({
    ^bb0(%arg0: i32, %arg1: tensor<64xi8>):
      %0 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %1 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
      %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %3 = "tt.expand_dims"(%2) <{new_dim = 1 : i32}> : (tensor<64xi32>) -> tensor<64x1xi32>
      %4 = "arith.cmpi"(%3, %arg0) {"predicate" = "eq"} : (tensor<64x1xi32>, i32) -> tensor<64x1xi1>
      %5 = "arith.select"(%4, %arg1, %0) : (tensor<64x1xi1>, tensor<64xi8>, tensor<64xi32>) -> tensor<64xi8>
      %6 = "arith.xori"(%5, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi8>, tensor<64xi32>) -> tensor<64xi8>
      "tt.return"(%5, %6) : (tensor<64xi8>, tensor<64xi8>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 32 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 256 : i32} : () -> ()