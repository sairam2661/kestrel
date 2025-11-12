"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "scratch_test"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> memref<1024xi32>
    %1 = "arith.constant"() <{value = dense<1> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
    %2 = "arith.addi"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %3 = "arith.muli"(%2, %1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %4 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> memref<512xi32>
    %5 = "arith.constant"() <{value = dense<2> : tensor<8x8xi32>}> : () -> tensor<8x8xi32>
    %6 = "arith.divsi"(%3, %5) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %7 = "ttg.global_scratch_alloc"() <{size = 256 : i32}> : () -> memref<256xi32>
    %8 = "arith.subi"(%6, %1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    "tt.return"(%8) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()