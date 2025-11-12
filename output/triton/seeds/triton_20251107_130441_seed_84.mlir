"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, !ttg_ptr) -> (tensor<i32>), sym_name = "unusual_combinations", sym_visibility = "public"}> ({
    ^bb0(%arg0: tensor<i32>, %arg1: !ttg_ptr):
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %0 = "tt.expand_dims"(%arg0, %c1_i32) : (tensor<i32>, i32) -> tensor<i32>
      %1 = "tt.make_range"(%c2_i32, %c1_i32) : (i32, i32) -> tensor<i32>
      %2 = "tt.addptr"(%arg1, %c2_i32) : (!ttg_ptr, i32) -> !ttg_ptr
      %3 = "tt.reduce"(%0, %2) <{func = #ttg_ptr_add}> : (tensor<i32>, !ttg_ptr) -> !ttg_ptr
      %4 = "tt.call"(%3) : (!ttg_ptr) -> tensor<i32>
      %5 = "arith.subi"(%4, %1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "tt.return"(%5) : (tensor<i32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()