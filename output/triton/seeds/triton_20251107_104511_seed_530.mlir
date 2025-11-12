"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<16x1xi32>, tensor<16x1xi32>), sym_name = "complex_scratch_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 512 : i32, alignment = 16 : i32}> : () -> tensor<16x1xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 768 : i32, alignment = 32 : i32}> : () -> tensor<16x1xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 64 : i32}> : () -> tensor<16x1xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 2048 : i32, alignment = 128 : i32}> : () -> tensor<16x1xi32>
    %4 = "arith.constant"() <{value = dense<1> : tensor<16xi32>}> : () -> tensor<16xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %6 = "arith.addi"(%0, %4) : (tensor<16x1xi32>, tensor<16xi32>) -> tensor<16x1xi32>
    %7 = "arith.addi"(%1, %5) : (tensor<16x1xi32>, tensor<16xi32>) -> tensor<16x1xi32>
    "tt.return"(%6, %7) : (tensor<16x1xi32>, tensor<16x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()