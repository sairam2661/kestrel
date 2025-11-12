"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8x8xi32>, tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>, sym_name = "tensor_complex_op"}> ({
  ^bb0(%arg0: tensor<8x8xi32>, %arg1: tensor<8x8xi32>, %arg2: tensor<8x8xi32>):
    %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, i32) -> tensor<8x8xi32>
    %3 = "arith.subi"(%2, %arg2) <{overflowFlags = #arith_overflownone}> : (tensor<8x8xi32>, tensor<8x8xi32>) -> tensor<8x8xi32>
    %4 = "ttg.global_scratch_alloc"() <{size = 1024 : i32, alignment = 64 : i32}> : () -> !ttg_ptr
    %5 = "tt.store"(%3, %4) : (tensor<8x8xi32>, !ttg_ptr) -> ()
    %6 = "tt.load"(%4) : (!ttg_ptr) -> tensor<8x8xi32>
    "tt.return"(%6) : (tensor<8x8xi32>) -> ()
  }) : () -> ()
}) : () -> ()