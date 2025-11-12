"builtin.module"() ({
  "tt.func"() <{function_type = (!ttg_global_scratch_alloc) -> (tensor<1024xi32>, tensor<512xi16>), sym_name = "scratch_test"}> ({
    ^bb0():
      %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 32 : i32}> : () -> !ttg_global_scratch_alloc
      %1 = "ttg.global_scratch_alloc"() <{size = 512 : i32, alignment = 64 : i32}> : () -> !ttg_global_scratch_alloc
      %2 = "ttg.global_scratch_alloc"() <{size = 256 : i32, alignment = 128 : i32}> : () -> !ttg_global_scratch_alloc
      %3 = "ttg.global_scratch_alloc"() <{size = 128 : i32, alignment = 256 : i32}> : () -> !ttg_global_scratch_alloc
      %4 = "arith.constant"() <{value = dense<1> : tensor<1024xi32>}> : () -> tensor<1024xi32>
      %5 = "arith.constant"() <{value = dense<2> : tensor<512xi16>}> : () -> tensor<512xi16>
      "tt.return"(%4, %5) : (tensor<1024xi32>, tensor<512xi16>) -> ()
  }) : () -> ()
}) {"ttg.num-warps" = 8 : i32} : () -> ()