"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "scratch_test"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 256}> : () -> memref<256xi32>
    %1 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 128}> : () -> memref<128xi32>
    %3 = "tt.make_range"() <{end = 64 : i32, start = 0 : i32}> : () -> tensor<64xi32>
    %4 = "ttg.global_scratch_alloc"() <{size = 64}> : () -> memref<64xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<64xi32>}> : () -> tensor<64xi32>
    %6 = "arith.muli"(%3, %5) <{overflowFlags = #arith_overflow_flags}> : (tensor<64xi32>, tensor<64xi32>) -> tensor<64xi32>
    %7 = "ttg.global_scratch_alloc"() <{size = 32}> : () -> memref<32xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()