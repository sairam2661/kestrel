"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "stress_test"}> ({
    %0 = "tt.make_range"() <{end = 256 : i32, start = 0 : i32}> : () -> tensor<256xi32>
    %1 = "tt.make_range"() <{end = 512 : i32, start = 256 : i32}> : () -> tensor<256xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %3 = "arith.constant"() <{value = dense<255> : tensor<256xi32>}> : () -> tensor<256xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_flags}> : (tensor<256xi32>, tensor<256xi32>) -> tensor<256xi32>
    %5 = "tt.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> memref<1024xi32>
    %6 = "tt.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> memref<1024xi32>
    %7 = "tt.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> memref<1024xi32>
    %8 = "tt.global_scratch_alloc"() <{size = 1024 : i32, alignment = 16 : i32}> : () -> memref<1024xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()