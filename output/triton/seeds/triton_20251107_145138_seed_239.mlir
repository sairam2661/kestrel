"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttgchandle), sym_name = "test_reduce", sym_visibility = "public"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 16 : i32, nbytes = 256 : i32}> : () -> !ttgchandle
    %1 = "ttg.global_scratch_alloc"() <{alignment = 32 : i32, nbytes = 1024 : i32}> : () -> !ttgchandle
    %2 = "scf.if"(%c1 : i1) ({
      %3 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, nbytes = 512 : i32}> : () -> !ttgchandle
      "scf.yield"(%3) : (!ttgchandle)
    }) {
      "scf.yield"=#map1d
    } : (!ttgchandle)
    %4 = "tt.reduce"(%1) <{operation = "add", identity = dense<0> : tensor<128xi32>}> ({
      %5 = "arith.addi"(%0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%5) : (tensor<128xi32>)
    }) : (tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%4) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()