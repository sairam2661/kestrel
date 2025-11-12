"builtin.module"() ({
  "tt.func"() <{function_type = () -> (!ttgPtr, !ttgPtr), sym_name = "fuzz_func", sym_visibility = "public"}> ({
    %0 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) : (i32, i32) -> i32
    %3 = "arith.xori"(%2, %1) : (i32, i32) -> i32
    %4 = "arith.remsi"(%3, %0) : (i32, i32) -> i32
    %5 = "arith.select"(%4, %3, %2) : (i32, i32, i32) -> i32
    %6 = "arith.constant"() <{value = 1 : i1}> : () -> i1
    %7 = "arith.select"(%6, %5, %4) : (i1, i32, i32) -> i32
    %9 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %10 = "ttg.global_scratch_alloc"() <{alignment = 128 : i32, nbytes = 4096 : i32}> : () -> !ttgPtr
    %11 = "tt.reduce"() <{operation = "sum"}> ({
      %12 = "arith.addi"(%9, %9) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
      "scf.yield"(%12) : tensor<128xi32>
    }) : tensor<128xi32>
    "tt.return"(%10, %11) : (!ttgPtr, tensor<128xi32>) -> ()
  }) : () -> (!ttgPtr, tensor<128xi32>)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()