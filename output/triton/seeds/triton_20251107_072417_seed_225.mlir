"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, size = 4096 : i32}> : () -> memref<4096xi32>
    %1 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, size = 4096 : i32}> : () -> memref<4096xi32>
    %2 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, size = 4096 : i32}> : () -> memref<4096xi32>
    %3 = "ttg.global_scratch_alloc"() <{alignment = 64 : i32, size = 4096 : i32}> : () -> memref<4096xi32>
    %4 = "arith.constant"() <{value = dense<1> : tensor<4096xi32>}> : () -> tensor<4096xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<4096xi32>}> : () -> tensor<4096xi32>
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (tensor<4096xi32>, tensor<4096xi32>) -> tensor<4096xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()