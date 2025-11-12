"builtin.module"() ({
  "tt.func"() <{function_type = (!ttgglobal_scratch_alloc, !ttgglobal_scratch_alloc) -> (!ttgglobal_scratch_alloc, !ttgglobal_scratch_alloc), sym_name = "complex_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 256 : i32}> : () -> !ttgglobal_scratch_alloc
    %1 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttgglobal_scratch_alloc
    %2 = "arith.constant"() <{value = dense<1> : tensor<64x64xi32>}> : () -> tensor<64x64xi32>
    %3 = "arith.constant"() <{value = dense<2> : tensor<64x64xi32>}> : () -> tensor<64x64xi32>
    %4 = "arith.cmpi"(%2, %3, "eq") : (tensor<64x64xi32>, tensor<64x64xi32>) -> i1
    %5 = "arith.select"(%4, %0, %1) : (i1, !ttgglobal_scratch_alloc, !ttgglobal_scratch_alloc) -> !ttgglobal_scratch_alloc
    "tt.return"(%5, %5) : (!ttgglobal_scratch_alloc, !ttgglobal_scratch_alloc) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "cuda:100"} : () -> ()