"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<16x16xi32>, tensor<16x16xi32>), sym_name = "complex_broadcast_and_add"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 16384 : i32}> : () -> tensor<16x16xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 16384 : i32}> : () -> tensor<16x16xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 16384 : i32}> : () -> tensor<16x16xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 16384 : i32}> : () -> tensor<16x16xi32>

    %4 = "arith.constant"() <{value = dense<1> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<16x16xi32>}> : () -> tensor<16x16xi32>

    %6 = "arith.addi"(%0, %4) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>
    %7 = "arith.addi"(%1, %5) <{overflowFlags = #arith_overflownone}> : (tensor<16x16xi32>, tensor<16x16xi32>) -> tensor<16x16xi32>

    "tt.return"(%6, %7) : (tensor<16x16xi32>, tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()