"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_explore"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 128 : i32}> : () -> memref<128xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> memref<256xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> memref<512xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32>
    %4 = "arith.constant"() <{value = dense<1> : tensor<128xi32>}> : () -> tensor<128xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<256xi32>}> : () -> tensor<256xi32>
    %6 = "arith.constant"() <{value = dense<4> : tensor<512xi32>}> : () -> tensor<512xi32>
    %7 = "arith.constant"() <{value = dense<8> : tensor<1024xi32>}> : () -> tensor<1024xi32>
    %8 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<256xi32>) -> tensor<128xi32>
    %9 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflownone}> : (tensor<512xi32>, tensor<1024xi32>) -> tensor<512xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()