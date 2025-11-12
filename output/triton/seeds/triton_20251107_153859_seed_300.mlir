"builtin.module"() ({
  "tt.func"() <{function_type = () -> tensor<128xi32>, sym_name = "complex_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> tensor<128xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> tensor<128xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 128 : i32}> : () -> tensor<128xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> tensor<128xi32>
    %4 = "arith.constant"() <{value = dense<42> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.addi"(%0, %4) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %6 = "arith.addi"(%1, %5) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %7 = "arith.addi"(%2, %6) : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    "tt.return"(%7) : (tensor<128xi32>) -> ()
  }) : () -> ()
}) : () -> ()