"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>, sym_name = "tensor_manipulation"}> ({
    ^bb0(%arg0: tensor<128xi32>, %arg1: tensor<128xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %1 = "tt.make_range"() <{end = 128 : i32, start = 64 : i32}> : () -> tensor<64xi32>
      %2 = "tt.expand_dims"(%1, %c0_i32) <{dim = 0 : i32}> : (tensor<64xi32>, i32) -> tensor<128xi32>
      %3 = "arith.subi"(%0, %2) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %4 = "tt.reduce"(%3) <{kind = #tt_reduce_kind_add, operand = 0 : i32}> : (tensor<128xi32>) -> i32
      "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 8 : i32, "ttg.num-warps" = 32 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()