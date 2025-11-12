"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<32xi32>, sym_name = "complex_scratch_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> tensor<32xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> tensor<32xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> tensor<32xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 8192 : i32}> : () -> tensor<32xi32>
    %4 = "arith.constant"() <{value = dense<42> : tensor<32xi32>}> : () -> tensor<32xi32>
    %5 = "arith.addi"(%0, %4) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    %6 = "arith.addi"(%1, %5) : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
    "tt.return"(%6) : (tensor<32xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 16 : i32} : () -> ()