"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "complex_scratch_alloc"}> ({
    %0 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> memref<256xi32>
    %1 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> memref<512xi32>
    %2 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32>
    %3 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> memref<2048xi32>
    %4 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_flagAttr}> : (memref<256xi32>, memref<512xi32>) -> memref<256xi32>
    %5 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflow_flagAttr}> : (memref<1024xi32>, memref<2048xi32>) -> memref<1024xi32>
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_flagAttr}> : (memref<256xi32>, memref<1024xi32>) -> memref<256xi32>
    "tt.return"() : () -> ()
  }) : () -> ()
}) : () -> ()