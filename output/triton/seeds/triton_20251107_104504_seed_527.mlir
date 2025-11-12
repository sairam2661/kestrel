"builtin.module"() ({
  "tt.func"() <{function_type = () -> (tensor<8x8xi32>, tensor<4x4xi8>), sym_name = "complex_allocs"}> ({
    ^bb0:
      %0 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> memref<8x8xi32>
      %1 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> memref<4x4xi8>
      %2 = "arith.constant"() <{value = dense<1> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
      %3 = "arith.constant"() <{value = dense<2> : tensor<4x4xi8>}> : () -> tensor<4x4xi8>
      %4 = "tt.store"(%2, %0) : (tensor<8x8xi32>, memref<8x8xi32>) -> ()
      %5 = "tt.store"(%3, %1) : (tensor<4x4xi8>, memref<4x4xi8>) -> ()
      %6 = "tt.load"(%0) : (memref<8x8xi32>) -> tensor<8x8xi32>
      %7 = "tt.load"(%1) : (memref<4x4xi8>) -> tensor<4x4xi8>
      "tt.return"(%6, %7) : (tensor<8x8xi32>, tensor<4x4xi8>) -> ()
  }) : () -> ()
}) : () -> ()