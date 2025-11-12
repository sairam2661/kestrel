"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "matrix_add"}> ({
  ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_ptr
    %1 = "ttg.global_scratch_alloc"() <{size = 2048 : i32}> : () -> !ttg_ptr
    %2 = "ttg.global_scratch_alloc"() <{size = 512 : i32}> : () -> !ttg_ptr
    %3 = "ttg.global_scratch_alloc"() <{size = 4096 : i32}> : () -> !ttg_ptr
    %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    "tt.return"(%4) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()