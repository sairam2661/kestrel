"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>, sym_name = "advanced_dot"}> ({
  ^bb0(%arg0: tensor<32x32xi32>, %arg1: tensor<32x32xi32>):
    %0 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_global_ptr
    %1 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_global_ptr
    %2 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_global_ptr
    %3 = "ttg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_global_ptr
    %4 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<32x32xi32>, tensor<32x32xi32>) -> tensor<32x32xi32>
    "tt.return"(%4) : (tensor<32x32xi32>) -> ()
  }) : () -> ()
}) : () -> ()