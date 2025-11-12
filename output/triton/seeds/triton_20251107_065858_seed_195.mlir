"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>, sym_name = "tensor_interleave", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<64xi32>, %arg1: tensor<64xi32>):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %2 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
      %3 = "arith.xori"(%2, %0) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %4 = "arith.addi"(%2, %3) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      %5 = "tt.select"(%4, %arg0, %arg1) : (tensor<64xi32>, tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
      "tt.return"(%5) : (tensor<64xi32>) -> ()
  }) : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()