"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "tensor_op_test"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> !ttgmemref
    %1 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> !ttgmemref
    %2 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> !ttgmemref
    %3 = "ttg.global_scratch_alloc"() <{size = 64 : i32}> : () -> !ttgmemref
    %4 = "arith.addi"(%arg0, %arg1) : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %5 = "tt.store"(%4, %0) : (tensor<8x8xi32>, !ttgmemref) -> ()
    %6 = "tt.load"(%0) : (!ttgmemref) -> tensor<8x8xi32>
    "tt.return"(%6) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()