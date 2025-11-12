"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_handle) -> i1, sym_name = "test_logic"}> ({
    ^bb0(%arg0: !ttg_handle):
      %0 = "tt.make_range"() <{end = 256 : i32, start = 128 : i32}> : () -> tensor<128xi32>
      %1 = "tt.make_range"() <{end = 384 : i32, start = 256 : i32}> : () -> tensor<128xi32>
      %2 = "arith.subi"(%0, %1) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      %3 = "tt.reduce"(%2) <{operation = "ttg.reduce_sum"}> : (tensor<128xi32>) -> i32
      %4 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %5 = "arith.cmpi"(%3, %4) <{predicate = 3 : i64}> : (i32, i32) -> i1
      "tt.return"(%5) : (i1) -> ()
  }) : (!ttg_handle) -> i1
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 2 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()