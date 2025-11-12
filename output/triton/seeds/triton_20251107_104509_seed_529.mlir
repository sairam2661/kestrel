"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<32x32xi32>, tensor<16x16xi32>), sym_name = "complex_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> memref<2048xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> memref<512xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> memref<256xi32>
    %4 = "arith.constant"() <{value = 1024 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 2048 : i32}> : () -> i32
    %6 = "arith.constant"() <{value = 512 : i32}> : () -> i32
    %7 = "arith.constant"() <{value = 256 : i32}> : () -> i32
    %8 = "tt.reshape"(%0, %4, %4) : (memref<1024xi32>, i32, i32) -> tensor<32x32xi32>
    %9 = "tt.reshape"(%1, %5, %5) : (memref<2048xi32>, i32, i32) -> tensor<16x16xi32>
    "tt.return"(%8, %9) : (tensor<32x32xi32>, tensor<16x16xi32>) -> ()
  }) : () -> ()
}) : () -> ()